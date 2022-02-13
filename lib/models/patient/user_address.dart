class UserAddress {
  String? streetName;
  String? streetNumber;
  String? city;
  String? state;
  String? country;

  UserAddress({
    required this.streetName,
    required this.streetNumber,
    required this.city,
    required this.state,
    required this.country,
  });

  factory UserAddress.fromJson(Map<String, dynamic> json) {
    return UserAddress(
        streetName: json['street']['name'],
        streetNumber: json['street']['number'].toString(),
        city: json['city'],
        state: json['state'],
        country: json['country']);
  }

  String getFullAddress() {
    return '$streetName, $streetNumber - $city/$state ($country)';
  }
}
