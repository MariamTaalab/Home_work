/*A phrase is a palindrome if, after converting all uppercase letters into lowercase letters 
 and removing all non-alphanumeric characters,
 it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise. */
void main() {
  print(isPalindrom('A man, a plan, a canal: panama'));
  print(isPalindrom('race a car'));
  print(isPalindrom(' '));
}

bool isPalindrom(String s) {
  s = s.toLowerCase();
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    while (left < right && ! isAlphanumeric(s[left])) {
      left++;
    }
    while (left < right && ! isAlphanumeric(s[right])) {
      right--;
    }
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

bool isAlphanumeric(String ch) {
  return RegExp(r'[a-z0-9]').hasMatch(ch);
}
