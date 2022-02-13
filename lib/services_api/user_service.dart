import 'package:challenge/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class UserService {
  static Future<Response> getPatients(
      int? page, int? lenght, List<String>? nationality, String? gender) async {
    Uri url = Uri.parse(
        '${AppConstants.baseUrl}/?page=$page&results=$lenght&nationalty=$nationality&gender=$gender');

    return await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
  }
}
