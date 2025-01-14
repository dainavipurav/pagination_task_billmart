import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pagination_task/models/user_list.dart';
import 'package:pagination_task/models/user_model.dart';

DatabaseReference firebaseDatabaseref = FirebaseDatabase.instance.ref();

class UserListController extends GetxController {
  static final to = Get.isRegistered<UserListController>()
      ? Get.find<UserListController>()
      : Get.put(UserListController());

  final searchTextEditingController = TextEditingController();

  RxList<UserModel> userList = RxList<UserModel>([]);
  RxList<UserModel> searchedUserList = RxList<UserModel>([]);
  RxBool isLoading = RxBool(false);
  RxnString error = RxnString();

  @override
  void onInit() {
    initializeUserListFromFirebaseRealtimeDatabase();
    super.onInit();
  }

  /// Load data from params
  void initializeUserList(Map<String, dynamic> data) {
    userList.clear();
    searchedUserList.clear();
    if (data.isEmpty) {
      return;
    }
    userList.addAll(UserList.fromJson(data).userModel ?? []);
    searchedUserList.addAll(userList);
  }

  /// Load data from firebase realtime database
  Future<void> initializeUserListFromFirebaseRealtimeDatabase() async {
    error.value = null;
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.none)) {
        error.value = "You are offline. Please check your internet connection.";
        print("Offline mode: No internet connection.");
        return;
      }

      isLoading(true);

      // to show loader
      await Future.delayed(Duration(seconds: 2));
      final snapshot = await firebaseDatabaseref.get();
      if (snapshot.exists == false) {
        initializeUserList({});
        return;
      }
      final data = jsonDecode(jsonEncode(snapshot.value));
      initializeUserList(data);
    } on SocketException catch (e) {
      isLoading(false);
      error.value = "Network error: No Internet connection.";
      print("SocketException: ${e.message}");
    } on PlatformException catch (e) {
      isLoading(false);
      error.value = "Platform error: ${e.message}";
      print("PlatformException: ${e.message}");
    } catch (e) {
      isLoading(false);
      error.value = e.toString();
      print("Unexpected error: ${e.toString()}");
    } finally {
      isLoading(false); // Hide loader after operation
    }
  }

  /// Filter list by search value
  void onSearchUserByName(String value) {
    searchedUserList.clear();
    if (value.trim().isEmpty) {
      searchedUserList.addAll(userList);
      return;
    }

    searchedUserList.addAll(
      userList.where(
        (e) {
          return e.firstName!.toLowerCase().contains(value) ||
              e.middleName!.toLowerCase().contains(value) ||
              e.lastName!.toLowerCase().contains(value);
        },
      ),
    );
  }
}
