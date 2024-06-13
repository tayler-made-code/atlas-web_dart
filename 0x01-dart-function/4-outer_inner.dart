void outer(String name, String id) {
  String lastNameInitial = name.split(" ")[1][0];
  String firstName = name.split(" ")[0];

  String inner() {
    return 'Hello Agent $lastNameInitial.$firstName your id is $id';
  }
  print (inner());
}