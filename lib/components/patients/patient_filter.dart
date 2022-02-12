import 'package:flutter/material.dart';

class PatientFilter extends StatelessWidget {
  const PatientFilter({Key? key}) : super(key: key);

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
                    labelText: 'Pesquisando...',
                    labelStyle: Theme.of(context).textTheme.headline2,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: const Icon(
                      Icons.person_search,
                      color: Colors.black54,
                    ),
                  ),
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

/*
Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
*/ 