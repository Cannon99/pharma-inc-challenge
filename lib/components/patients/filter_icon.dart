import 'package:challenge/services_app/filter_options_service.dart';
import 'package:challenge/services_app/popover_service.dart';
import 'package:flutter/material.dart';

class FilterIcon extends StatelessWidget {
  final FilterOptionsService filterOptionsService;
  final Function(String query) filterPatients;
  final Function(String query) filterFromPopover;

  const FilterIcon(
      this.filterOptionsService, this.filterFromPopover, this.filterPatients,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.filter_alt,
        size: 45,
        color: Theme.of(context).colorScheme.primary,
      ),
      onTap: () => PopoverService.showPopoverFilter(
          context, filterOptionsService, filterPatients, filterFromPopover),
    );
  }
}
