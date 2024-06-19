import '9-palindrome.dart';

String longestPalindrome(String str) {
  String longest = "";

  if (str.isEmpty) {
    return "none";
  }

  if (isPalindrome(str)) {
    return str;
  }

  for (int i = 0; i < str.length; i++) {
    for (int j = i + 2; j <= str.length; j++) {
      String substring = str.substring(i, j);
      if (substring == substring.split('').reversed.join() && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest.isEmpty ? "none" : longest;
}