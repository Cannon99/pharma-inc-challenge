import 'package:auto_size_text/auto_size_text.dart';
import 'package:challenge/services_app/modal_service.dart';
import 'package:flutter/material.dart';

class PatientItem extends StatelessWidget {
  const PatientItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(
          left: 0,
          top: 10,
          right: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.16,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: MediaQuery.of(context).size.height * 0.08,
                child: const Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              Container(
                width: constraints.maxWidth * 0.025,
              ),
              Expanded(
                child: SizedBox(
                  height: constraints.maxHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 5,
                        ),
                        child: Expanded(
                          child: AutoSizeText(
                            'Matheus Alves Furlan',
                            maxLines: 3,
                            minFontSize: 14,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Masculino',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            Text(
                              '11/02/2022',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () => ModalService.showModalPatientDetails(context),
    );
  }
}
