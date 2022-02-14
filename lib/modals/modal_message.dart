import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalMessage extends StatelessWidget {
  final String title;
  final String message;

  const ModalMessage(this.title, this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      buttonPadding: const EdgeInsets.all(0),
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.only(
        top: 15,
        right: 10,
        bottom: 0,
        left: 10,
      ),
      actionsAlignment: MainAxisAlignment.center,
      elevation: 10,
      title: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(7),
            topRight: Radius.circular(7),
            bottomRight: Radius.zero,
            bottomLeft: Radius.zero,
          ),
          color: Theme.of(context).colorScheme.primaryVariant,
        ),
        padding: const EdgeInsets.all(9),
        child: Row(
          children: [
            const Icon(
              Icons.info_outline,
              size: 29,
              color: Colors.white,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      content: Container(
        decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(
              color: Colors.black26,
            ),
            right: BorderSide(
              color: Colors.black26,
            ),
            bottom: BorderSide(
              color: Colors.black26,
            ),
            left: BorderSide(
              color: Colors.black26,
            ),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            message,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 10,
            bottom: 5,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.primaryVariant,
                ),
                child: const Text(
                  'OK',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
