import 'package:challenge/utils/app_constants.dart';
import 'package:flutter/material.dart';

class UserPicture extends StatelessWidget {
  const UserPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      right: 10,
      top: 0,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: AppConstants.getAvatarRadiusUserDetails(context),
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          radius: AppConstants.getAvatarRadiusUserDetails(context),
          child: const Icon(
            Icons.person,
            size: 35,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
