import 'package:challenge/pipes/pipes.dart';
import 'package:challenge/services_app/filter_options_service.dart';
import 'package:flutter/material.dart';

class PatientFilterOptions extends StatefulWidget {
  final FilterOptionsService filterOptionsService;
  final Function(String query) filterPatients;
  final Function(String query) filterFromPopover;

  const PatientFilterOptions(
      this.filterOptionsService, this.filterFromPopover, this.filterPatients,
      {Key? key})
      : super(key: key);

  @override
  State<PatientFilterOptions> createState() => _PatientFilterOptionsState();
}

class _PatientFilterOptionsState extends State<PatientFilterOptions> {
  @override
  void initState() {
    super.initState();
  }

  List<Row> getGenders() {
    return widget.filterOptionsService.getGenderOptions
        .asMap()
        .entries
        .map(
          (MapEntry<int, String> gender) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                activeColor: Theme.of(context).colorScheme.secondaryVariant,
                value: gender.value,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                groupValue: widget.filterOptionsService.getSelectedGender,
                onChanged: (String? newValue) {
                  setState(() => widget.filterOptionsService.setSelectedGender =
                      newValue!);
                },
              ),
              Text(
                Pipes.textCase(gender.value),
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        )
        .toList();
  }

  List<Row> getNationalitites() {
    return widget.filterOptionsService.getNationalityOptions.entries
        .map(
          (MapEntry<String, bool> nationality) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                  activeColor: Theme.of(context).colorScheme.secondaryVariant,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: nationality.value,
                  onChanged: (bool? newValue) => setState(() => widget
                      .filterOptionsService
                      .getNationalityOptions[nationality.key] = newValue!)),
              Text(
                nationality.key,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(width: 5),
            ],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Gender:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 5),
              Wrap(
                direction: Axis.horizontal,
                children: getGenders(),
              ),
              const SizedBox(height: 15),
              Text(
                'Nationalities:',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 5),
              Wrap(
                direction: Axis.horizontal,
                children: getNationalitites(),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                child: const Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    primary: Theme.of(context).colorScheme.secondary,
                    onPrimary: Colors.white,
                    minimumSize: const Size.fromHeight(40)),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  widget.filterFromPopover(
                      widget.filterOptionsService.getLastNameQuery);
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        );
      }),
    );
  }
}


/*Padding(
      padding: const EdgeInsets.all(10),
      child: Builder(builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Gender:',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 5),
            Wrap(
              direction: Axis.horizontal,
              children: getGenders(),
            ),
            const SizedBox(height: 15),
            Text(
              'Nationalities:',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 5),
            Wrap(
              direction: Axis.horizontal,
              children: getNationalitites(),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text(
                'Filter',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  primary: Theme.of(context).colorScheme.secondary,
                  onPrimary: Colors.white,
                  minimumSize: const Size.fromHeight(40)),
              onPressed: () {
                FocusScope.of(context).unfocus();
                widget.filterFromPopover(
                    widget.filterOptionsService.getLastNameQuery);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }),
    );*/