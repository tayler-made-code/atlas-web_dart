import '2-util.dart';
import 'dart:convert';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    Map<String, dynamic> user = json.decode(userData);
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}