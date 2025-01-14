import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_task/components/user_list_item.dart';
import 'package:pagination_task/screens/user_list/user_list_controller.dart';

class UserListScreen extends StatelessWidget {
  UserListScreen({super.key});

  final xController = UserListController.to;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(),
            TextField(
              controller: xController.searchTextEditingController,
              onChanged: xController.onSearchUserByName,
              style: theme.textTheme.headlineSmall,
              decoration: InputDecoration(
                labelText: 'Search User',
                hintText: 'Enter user name',
                prefixIcon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
            Expanded(
              child: Obx(() {
                if (xController.isLoading.value &&
                    xController.searchedUserList.isEmpty) {
                  return Center(child: CircularProgressIndicator());
                }

                if (xController.searchedUserList.isEmpty) {
                  return Center(
                    child: Text(
                      xController.error.value != null
                          ? xController.error.value!
                          : 'No Data Found',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  itemCount: xController.searchedUserList.length,
                  itemBuilder: (context, index) {
                    return UserListItem(
                      userModel: xController.searchedUserList[index],
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
