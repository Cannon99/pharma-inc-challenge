class UserName {
  String? title;
  String? first;
  String? last;

  UserName({required this.title, required this.first, required this.last});

  factory UserName.fromJson(Map<String, dynamic> json) {
    return UserName(
        title: json['title'], first: json['first'], last: json['last']);
  }

  String getUserFullName() {
    return '$title $first $last';
  }
}
