import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 5,
          ),
          width: double.infinity,
          color: Theme.of(context).colorScheme.secondary,
          child: const Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
