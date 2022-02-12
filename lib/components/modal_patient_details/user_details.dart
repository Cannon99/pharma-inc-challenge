import 'dart:ui';

import 'package:challenge/utils/app_constants.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: AppConstants.getDefaultPaddingUserDetails(context),
          top: AppConstants.getAvatarRadiusUserDetails(context) +
              AppConstants.getPaddingAvatarUserDetails(context),
          right: AppConstants.getDefaultPaddingUserDetails(context),
          bottom: AppConstants.getDefaultPaddingUserDetails(context)),
      margin: EdgeInsets.only(
          top: AppConstants.getAvatarRadiusUserDetails(context)),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Matheus Alves Furlan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
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
              Expanded(
                child: Text(
                  '10',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
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
              Expanded(
                child: Text(
                  'matheusfurlan100@gmail.com',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
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
                'Gênero:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Masculino',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
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
                'Data de nascimento:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '12/02/2022',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
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
                'Telefone:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '(19) 99533-0691',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
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
                'Nacionalidade:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Brasileiro',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
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
                'Endereço:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Rua Leonardo Trovato, 16',
                  style: Theme.of(context).textTheme.headline1,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
