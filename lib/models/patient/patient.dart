import 'package:challenge/models/patient/user_address.dart';
import 'package:challenge/models/patient/user_birth_date.dart';
import 'package:challenge/models/patient/user_id.dart';
import 'package:challenge/models/patient/user_name.dart';

class Patient {
  UserId? id;
  UserBirthDate? birthDate;
  UserAddress? address;
  String? fullName;
  String? imageUrl;
  String? email;
  String? gender;
  String? phone;
  String? nationality;

  Patient({
    required this.id,
    required this.birthDate,
    required this.address,
    required this.fullName,
    required this.imageUrl,
    required this.email,
    required this.gender,
    required this.phone,
    required this.nationality,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: UserId.fromJson(json['id']),
      birthDate: UserBirthDate.fromJson(json['dob']),
      address: UserAddress.fromJson(json['location']),
      fullName: UserName.fromJson(json['name']).getUserFullName(),
      imageUrl: json['picture']['large'],
      email: json['email'],
      gender: json['gender'],
      phone: json['phone'],
      nationality: json['nat'],
    );
  }
}
