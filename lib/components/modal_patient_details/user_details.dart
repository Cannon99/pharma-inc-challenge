import 'dart:ui';

import 'package:challenge/components/general/close_icon.dart';
import 'package:challenge/models/patient/patient.dart';
import 'package:challenge/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserDetails extends StatelessWidget {
  final Patient patient;
  const UserDetails(this.patient, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppConstants.getDefaultPaddingUserDetails(context),
        top: AppConstants.getAvatarRadiusUserDetails(context) +
            AppConstants.getPaddingAvatarUserDetails(context),
        right: AppConstants.getDefaultPaddingUserDetails(context),
        bottom: AppConstants.getDefaultPaddingUserDetails(context),
      ),
      margin: EdgeInsets.only(
        top: AppConstants.getAvatarRadiusUserDetails(context),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          patient.fullName != null
              ? Text(
                  patient.fullName!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                )
              : const CloseIcon(),
          const SizedBox(height: 25),
          Row(
            children: [
              Icon(
                Icons.attach_file_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'ID:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.id != null && patient.id!.value != null
                  ? Expanded(
                      child: Text(
                        patient.id!.value!,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon()
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(
                Icons.email_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Email:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.email != null
                  ? Expanded(
                      child: Text(
                        patient.email!,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon()
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(
                Icons.person_outline_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Gender:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.gender != null
                  ? Expanded(
                      child: Text(
                        patient.gender!,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon()
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(
                Icons.date_range_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Birth Date:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.birthDate != null && patient.birthDate!.date != null
                  ? Expanded(
                      child: Text(
                        DateFormat('dd/MM/yyyy').format(
                          DateTime.parse(
                            (patient.birthDate!.date!),
                          ),
                        ),
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon()
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(
                Icons.phone_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Phone:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.phone != null
                  ? Expanded(
                      child: Text(
                        patient.phone!,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon(),
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(
                Icons.flag_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Nationality:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.nationality != null
                  ? Expanded(
                      child: Text(
                        patient.nationality!,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon(),
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(
                Icons.home_work_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Address:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              patient.address != null
                  ? Expanded(
                      child: Text(
                        patient.address!.getFullAddress(),
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  : const CloseIcon()
            ],
          ),
        ],
      ),
    );
  }
}
