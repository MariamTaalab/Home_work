/*Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
You must implement a solution with a linear runtime complexity and use only constant extra space. */
class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> countMap = {};
    for (int num in nums) {
      if (countMap.containsKey(num)) {
        countMap[num] = countMap[num]! + 1;
      } else {
        countMap[num] = 1;
      }
    }
    for (int key in countMap.keys) {
      if (countMap[key] == 1) {
        return key;
      }
    }
    return -1;
  }
}

void main() {
  Solution s1 = Solution();
  print(s1.singleNumber([2, 2, 1]));
  print(s1.singleNumber([4, 1, 2, 1, 2]));
  print(s1.singleNumber([1]));
}
