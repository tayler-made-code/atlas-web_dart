bool isPalindrome(String s) {
  if (s.isEmpty || s.length <= 3)
    return false;
  for (var i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - i - 1]) {
      return false;
    }
  }
  return true;
}