import 'package:flutter/material.dart';
import 'package:pagination_task/components/profile_image.dart';
import 'package:pagination_task/models/user_model.dart';
import 'package:pagination_task/screens/user_details/user_details_screen.dart';
import 'package:pagination_task/utils/enums.dart';

class UserListItem extends StatelessWidget {
  final UserModel userModel;
  const UserListItem({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          '${userModel.firstName} ${userModel.middleName} ${userModel.lastName}',
          style: theme.textTheme.displayMedium,
        ),
        leading: ProfileImage(
          image: userModel.userImage,
          imageLoadType: ImageLoadType.network,
          size: 32,
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetailsScreen(userModel: userModel),
          ),
        ),
      ),
    );
  }
}
