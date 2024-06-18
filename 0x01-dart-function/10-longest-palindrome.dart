String longestPalindrome(String s) {
  if (s.isEmpty) return '';
  var longest = s[0];
  for (var i = 0; i < s.length; i++) {
    var palindrome = expandAroundCenter(s, i, i);
    if (palindrome.length > longest.length) {
      longest = palindrome;
    }
    palindrome = expandAroundCenter(s, i, i + 1);
    if (palindrome.length > longest.length) {
      longest = palindrome;
    }
  }
  return longest;
}

String expandAroundCenter(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }
  return s.substring(left + 1, right);
}