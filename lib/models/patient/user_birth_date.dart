class UserBirthDate {
  String? date;
  String? age;

  UserBirthDate({
    required this.date,
    required this.age,
  });

  factory UserBirthDate.fromJson(Map<String, dynamic> json) {
    return UserBirthDate(date: json['date'], age: json['age'].toString());
  }
}
