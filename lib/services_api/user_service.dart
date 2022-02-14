import 'dart:developer';

import 'package:challenge/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class UserService {
  static Future<Response> getPatients(int? pageKey, int? pageSize,
      String? nationalities, String? gender) async {
    Uri url = Uri.parse(
        '${AppConstants.baseUrl}?page=$pageKey&results=$pageSize&nationality=$nationalities&gender=$gender');

    return await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
  }
}
