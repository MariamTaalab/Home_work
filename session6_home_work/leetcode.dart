/*Given an integer array nums,
 return true if any value appears at least twice in the array, and return false if every element is distinct. */

void main() {
  Solution sol = Solution();
  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];
  print(sol.containsDuplicate(nums1));
  print(sol.containsDuplicate(nums2));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }
}
