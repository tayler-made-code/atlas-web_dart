class Password {  
  // property for password
  String password;

  Password({this.password = ''});

  // method to check if password is valid
  bool isValid() {
    if (password.length < 8 || password.length > 16)
      return false;
    if (!password.contains(RegExp(r'[A-Z]')) && !password.contains(RegExp(r'[a-z]')) && !password.contains(RegExp(r'[0-9]')))
      return false;
    return true;
  }

  String toString() {
    return 'Your Password is: $password';
  }
}