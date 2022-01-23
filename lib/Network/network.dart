import 'dart:convert';

import 'package:http/http.dart';
import 'package:profile_parsing/Models/models.dart';


class Network {
  Future<Profile> getProfile() async {
    String url = "https://py.crewbella.com/user/api/profile/chiragbalani";
    final response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Profile.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Error getting Weather Forecast");
    }
  }
}
