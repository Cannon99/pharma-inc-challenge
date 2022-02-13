import 'package:challenge/components/general/modal_message.dart';
import 'package:challenge/modals/modal_patient_details.dart';
import 'package:challenge/models/patient/patient.dart';
import 'package:flutter/material.dart';

class ModalService {
  static void showModalPatientDetails(BuildContext context, Patient patient) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (_) {
        return ModalPatientDetails(patient);
      },
    );
  }

  static void showModalMessage(
    BuildContext context,
    String title,
    String message,
  ) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return ModalMessage(
          title,
          message,
        );
      },
    );
  }
}
