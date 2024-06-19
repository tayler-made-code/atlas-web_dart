class User {  
  // properties for user
  String name;
  int age;
  double height;
  int id;

  User({required this.id, required this.name, required this.age, required this.height});

  // method to return user as json
  String toJson() {
    return '{id: $id, name: $name, age: $age, height: $height}';
  }

  // method to create user from json
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height']);
  }

  String toString() {
    return 'User(id : $id, name: $name, age: $age, height: $height)';
  }
}