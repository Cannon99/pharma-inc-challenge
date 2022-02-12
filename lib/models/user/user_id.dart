class UserId {
  String name;
  String value;

  UserId({
    required this.name,
    required this.value,
  });

  factory UserId.fromJson(Map<String, dynamic> json) {
    return UserId(name: json['name'], value: json['value']);
  }
}
