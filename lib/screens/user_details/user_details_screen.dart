import 'package:flutter/material.dart';
import 'package:pagination_task/components/detail_section.dart';
import 'package:pagination_task/components/profile_image.dart';
import 'package:pagination_task/models/user_model.dart';
import 'package:pagination_task/utils/enums.dart';

class UserDetailsScreen extends StatelessWidget {
  final UserModel userModel;
  const UserDetailsScreen({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userModel.firstName ?? 'Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            SizedBox(),
            ProfileImage(
              image: userModel.userImage,
              imageLoadType: ImageLoadType.network,
              size: 64,
            ),
            Expanded(
              child: Column(
                children: [
                  DetailSection(
                    heading: 'First Name',
                    description: userModel.firstName ?? '',
                  ),
                  DetailSection(
                    heading: 'Middle Name',
                    description: userModel.middleName ?? '',
                  ),
                  DetailSection(
                    heading: 'Last Name',
                    description: userModel.lastName ?? '',
                  ),
                  DetailSection(
                    heading: 'Age',
                    description: userModel.age.toString(),
                  ),
                  DetailSection(
                    heading: 'Occupation',
                    description: userModel.occupation ?? '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
