import 'dart:developer';

import 'package:challenge/models/patient/patient.dart';

class FilterOptionsService {
  late List<String> _genderOptions;
  late Map<String, bool> _nationalityOptions;
  late String _selectedGender;
  late String _lastNameQuery;

  FilterOptionsService() {
    _genderOptions = ['male', 'female', 'both'];
    _nationalityOptions = {
      'AU': false,
      'BR': true,
      'CA': true,
      'CH': false,
      'DE': false,
      'DK': false,
      'ES': false,
      'FI': false,
      'FR': false,
      'GB': false,
      'IE': false,
      'IR': false,
      'NO': false,
      'NL': false,
      'NZ': false,
      'US': true,
      'TR': false,
    };
    _selectedGender = getGenderOptions[2];
    _lastNameQuery = '';
  }

  List<String> get getGenderOptions {
    return _genderOptions;
  }

  Map<String, bool> get getNationalityOptions {
    return _nationalityOptions;
  }

  String get getSelectedGender {
    return _selectedGender;
  }

  set setSelectedGender(String gender) {
    _selectedGender = gender;
  }

  String get getLastNameQuery {
    return _lastNameQuery;
  }

  List<Patient> filterPatients(String query, List<Patient> patients) {
    _lastNameQuery = query;
    List<MapEntry<String, bool>> flaggedNationalitites = getNationalityOptions
        .entries
        .where(
            (MapEntry<String, bool> nationality) => nationality.value == true)
        .toList();

    return patients.where(getGenderQuery(flaggedNationalitites)).toList();
  }

  bool Function(Patient) getGenderQuery(
      List<MapEntry<String, bool>> flaggedNationalitites) {
    return (Patient patient) =>
        patient.fullName!
            .toLowerCase()
            .contains(_lastNameQuery.toLowerCase()) &&
        flaggedNationalitites
            .where((MapEntry<String, bool> nationality) =>
                nationality.key.toUpperCase() ==
                patient.nationality!.toUpperCase())
            .isNotEmpty &&
        (getSelectedGender == 'both'
            ? true
            : getSelectedGender == patient.gender);
  }
}
