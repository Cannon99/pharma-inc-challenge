import 'package:challenge/components/patients/home_button.dart';
import 'package:challenge/components/patients/patient_filter.dart';
import 'package:challenge/components/patients/patient_item.dart';
import 'package:flutter/material.dart';

class Patients extends StatelessWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pacientes'),
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
                child: ListView(
                  children: const [
                    PatientItem(),
                    PatientItem(),
                    PatientItem(),
                    PatientItem(),
                    PatientItem(),
                  ],
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

/*
ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: CircleAvatar(
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    radius: 40,
                    backgroundColor: Colors.grey.shade300,
                  ),
                  title: const Text('Matheus Alves Furlan'),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Sexo: Masculino'),
                      Text('11/02/2022'),
                    ],
                  ),
                ),

                bottomNavigationBar: BottomNavigationBar(
        onTap: (_) {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categorias'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos')
        ],
      ),
*/