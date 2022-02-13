import 'dart:developer';

import 'package:flutter/material.dart';

class PatientFilter extends StatelessWidget {
  final Function(String query) filterPatients;
  const PatientFilter(this.filterPatients, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline1,
                  cursorColor: Theme.of(context).colorScheme.primary,
                  keyboardType: TextInputType.text,
                  onTap: () => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    labelText: 'Search...',
                    labelStyle: Theme.of(context).textTheme.headline2,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: GestureDetector(
                      child: const Icon(
                        Icons.person_search,
                        color: Colors.black54,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                  ),
                  onChanged: (String query) => filterPatients(query),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Icon(
                  Icons.filter_alt,
                  size: 45,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
