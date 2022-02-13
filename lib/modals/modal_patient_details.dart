import 'package:challenge/components/modal_patient_details/user_details.dart';
import 'package:challenge/components/modal_patient_details/user_picture.dart';
import 'package:challenge/models/patient/patient.dart';
import 'package:flutter/material.dart';

class ModalPatientDetails extends StatelessWidget {
  final Patient patient;
  const ModalPatientDetails(this.patient, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        UserDetails(patient),
        UserPicture(patient),
      ],
    );
  }
}
