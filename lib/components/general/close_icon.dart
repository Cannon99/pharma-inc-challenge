import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.close,
      color: Colors.red.shade800,
      size: 21,
    );
  }
}
