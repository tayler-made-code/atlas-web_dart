import '6-password.dart';

class User extends Password {  
  // properties for user
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.id, this.name, this.age, this.height, String? user_password}) : super(password: user_password);

  // method to return user as json
  String toJson() {
    return '{id: $id, name: $name, age: $age, height: $height}';
  }

  // method to create user from json
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password']
    );
  }

  set user_password(String? value) {
    super.password = value;
  }

  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}