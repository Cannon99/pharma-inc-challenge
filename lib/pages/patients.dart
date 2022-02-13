import 'dart:convert';

import 'package:challenge/components/general/loader.dart';
import 'package:challenge/components/patients/home_button.dart';
import 'package:challenge/components/patients/patient_filter.dart';
import 'package:challenge/components/patients/patient_item.dart';
import 'package:challenge/models/other/info.dart';
import 'package:challenge/models/patient/patient.dart';

import 'package:challenge/services_api/user_service.dart';
import 'package:challenge/services_app/modal_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:loader_overlay/loader_overlay.dart';

class Patients extends StatefulWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  State<Patients> createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  List<Patient> patients = [
    Patient(
        id: null,
        birthDate: null,
        address: null,
        fullName: null,
        imageUrl: null,
        email: null,
        gender: null,
        phone: null,
        nationality: null)
  ];
  late Info info;

  @override
  void initState() {
    super.initState();
    getPatients();
  }

  Future<void> getPatients() async {
    context.loaderOverlay.show(
      widget: Loader(
        'Loading...',
        context,
      ),
    );

    try {
      Response response = await UserService.getPatients(null, null, null, null);
      context.loaderOverlay.hide();

      Map<String, dynamic> map = json.decode(response.body);

      if (response.statusCode == 200) {
        patients = (map['results'] as List<dynamic>)
            .map((dynamic element) => Patient.fromJson(element))
            .toList();
        info = Info.fromJson(map['info']);

        setState(() {
          patients;
          info;
        });
      } else if (response.statusCode != 200 || map['error']) {
        ModalService.showModalMessage(
            context,
            'Search error',
            map['error']
                ? map['error']
                : 'It was not possible to load the patients list');
      }
    } catch (error) {
      context.loaderOverlay.hide();
      ModalService.showModalMessage(
        context,
        'Search error',
        'It was not possible to load the patients list: ${error.toString()}',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pacients List'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02,
          vertical: MediaQuery.of(context).size.height * 0.01,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const PatientFilter(),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: patients.length,
                  itemBuilder: (context, index) => PatientItem(patients[index]),
                ),
              ),
              const HomeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
