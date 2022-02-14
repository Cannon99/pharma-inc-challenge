import 'package:challenge/components/popovers/patient_filter_options.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

import 'filter_options_service.dart';

class PopoverService {
  static void showPopoverFilter(
      BuildContext context,
      final FilterOptionsService filterOptionsService,
      final Function(String query) filterPatients,
      final Function(String query) filterFromPopover) {
    showPopover(
      context: context,
      transitionDuration: const Duration(milliseconds: 80),
      bodyBuilder: (context) => PatientFilterOptions(
          filterOptionsService, filterPatients, filterFromPopover),
      direction: PopoverDirection.bottom,
      arrowHeight: 5,
      arrowWidth: 10,
    );
  }
}
