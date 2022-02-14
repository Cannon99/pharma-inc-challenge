import 'package:auto_size_text/auto_size_text.dart';
import 'package:challenge/components/general/close_icon.dart';
import 'package:challenge/models/patient/patient.dart';
import 'package:challenge/pipes/pipes.dart';
import 'package:challenge/services_app/modal_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PatientItem extends StatelessWidget {
  final Patient patient;

  const PatientItem(this.patient, {Key? key}) : super(key: key);

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
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          height: MediaQuery.of(context).size.height * 0.16,
          child: LayoutBuilder(
            builder: (context, constraints) => Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: MediaQuery.of(context).size.height * 0.08,
                  child: patient.imageUrl != null
                      ? ClipOval(
                          child: Image.network(
                            patient.imageUrl!,
                          ),
                        )
                      : const Icon(Icons.person, size: 30, color: Colors.grey),
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
                          child: patient.fullName != null
                              ? Expanded(
                                  child: AutoSizeText(
                                    patient.fullName!,
                                    maxLines: 3,
                                    minFontSize: 14,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                )
                              : const CloseIcon(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              patient.gender != null
                                  ? Text(
                                      Pipes.textCase(patient.gender!),
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    )
                                  : const CloseIcon(),
                              patient.birthDate != null
                                  ? Text(
                                      DateFormat('dd/MM/yyyy').format(
                                        DateTime.parse(
                                          (patient.birthDate!.date!),
                                        ),
                                      ),
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    )
                                  : const CloseIcon()
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
        onTap: () => {
              FocusScope.of(context).unfocus(),
              ModalService.showModalPatientDetails(context, patient),
            });
  }
}
