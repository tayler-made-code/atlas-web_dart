class User {  
  // properties for user
  String name;
  int age;
  double height;

  User({required this.name, required this.age, required this.height});

  // method to return user as json
  String toJson() {
    return '{name: $name, age: $age, height: $height}';
  }
}