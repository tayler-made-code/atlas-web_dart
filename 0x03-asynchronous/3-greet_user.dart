import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    return 'Hello ${user['username']}';
  } catch (error) {
    return('error caught: $error');

  }
}

Future<String> loginUser() async {
  try {
    bool credentials = await checkCredentials();
    if (!credentials) {
      print('There is a user: $credentials');
      return 'Wrong credentials';
    }
    print('There is a user: $credentials');
    return greetUser();
  } catch (error) {
    return('error caught: $error');
  }
}