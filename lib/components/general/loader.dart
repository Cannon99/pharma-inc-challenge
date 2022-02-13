import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final String message;
  final BuildContext context;

  const Loader(this.message, this.context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: Theme.of(this.context).colorScheme.secondary,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
