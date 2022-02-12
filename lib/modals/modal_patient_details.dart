import 'dart:ui';

import 'package:challenge/components/modal_patient_details/user_details.dart';
import 'package:challenge/components/modal_patient_details/user_picture.dart';
import 'package:flutter/material.dart';

class ModalPatientDetails extends StatelessWidget {
  const ModalPatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const <Widget>[UserDetails(), UserPicture()],
    );
  }
}
