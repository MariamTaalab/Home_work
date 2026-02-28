/*Given an array of integers nums sorted in ascending order, and an integer target, write a function to
search target in nums.- If target exists, return its index. Otherwise, return -1.
- The algorithm must run in O(log n) time complexity.
Examples:- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
Explanation: 9 exists in nums and its index is 4.- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
Explanation: 2 does not exist in nums, so return -1 */
import 'dart:io';

void main() {
  print("Enter number of elements:");
  int n = int.parse(stdin.readLineSync()!);
  List<int> nums = [];
  print("Enter the number(Sorted):");
  for (int i = 0; i < n; i++) {
    nums.add(int.parse(stdin.readLineSync()!));
  }
  print("Enter target number:");
  int target = int.parse(stdin.readLineSync()!);
  
  int left = 0;
  int right = nums.length - 1;
  int result = -1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (nums[mid] == target) {
      result = mid;
      break;
    } else if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  print("result: $result");
}
