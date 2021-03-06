import 'package:challenge/models/patient/patient.dart';
import 'package:challenge/utils/app_constants.dart';
import 'package:flutter/material.dart';

class UserPicture extends StatelessWidget {
  final Patient patient;
  const UserPicture(this.patient, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      right: 10,
      top: 0,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        radius: AppConstants.getAvatarRadiusUserDetails(context),
        child: ClipOval(
          child: patient.imageUrl != null
              ? Image.network(
                  patient.imageUrl!,
                  fit: BoxFit.cover,
                  width: AppConstants.getAvatarRadiusUserDetails(context) * 2,
                  height: AppConstants.getAvatarRadiusUserDetails(context) * 2,
                )
              : const Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.grey,
                ),
        ),
      ),
    );
  }
}
