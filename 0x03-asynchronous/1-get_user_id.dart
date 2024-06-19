import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  Map<String, dynamic> user = json.decode(userData);
  return user['id'];
}