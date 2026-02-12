/*Given two strings s and t, return true if t is an anagram of s, and false otherwise.
 An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
 using all the original letters exactly once. */
class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    List<String> sList = s.split('');
    List<String> tList = t.split('');
    sList.sort();
    tList.sort();
    return sList.join() == tList.join();
  }
}

void main() {
  Solution solution = Solution();
  String s1 = "anagram";
  String t1 = "nagaram";
  print(solution.isAnagram(s1, t1));
  String s2 = 'rat';
  String t2 = 'car';
  print(solution.isAnagram(s2, t2));
}
