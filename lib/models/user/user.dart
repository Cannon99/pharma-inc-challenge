import 'package:challenge/models/user/user_address.dart';
import 'package:challenge/models/user/user_birth_date.dart';
import 'package:challenge/models/user/user_id.dart';
import 'package:challenge/models/user/user_name.dart';

class User {
  UserId id;
  UserBirthDate birthDate;
  UserAddress address;
  String fullName;
  String imageUrl;
  String email;
  String gender;
  String phone;
  String nationality;

  User({
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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: UserId.fromJson(json['id']),
      birthDate: UserBirthDate.fromJson(json['dot']),
      address: UserAddress.fromJson(json['location']),
      fullName: UserName.fromJson(json['name']).getUserFullName(),
      imageUrl: json['picture']['large'],
      email: json['email'],
      gender: json['male'],
      phone: json['phone'],
      nationality: json['nat'],
    );
  }
}
