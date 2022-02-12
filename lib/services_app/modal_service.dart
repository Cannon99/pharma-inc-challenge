import 'package:challenge/modals/modal_patient_details.dart';
import 'package:flutter/material.dart';

class ModalService {
  static void showModalPatientDetails(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (_) {
        return const ModalPatientDetails();
      },
    );
  }
}
