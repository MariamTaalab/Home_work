/*You are given an array prices where prices[i] is the price of a given stock on the ith day.
You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0. */

class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length < 2) return 0;
    int minPrice = prices[0];
    int maxprofit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      } else {
        int profit = prices[i] - minPrice;
        if (profit > maxprofit) {
          maxprofit = profit;
        }
      }
    }
    return maxprofit;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.maxProfit([7, 1, 5, 3, 6, 4]));
  print(solution.maxProfit([7, 6, 4, 3, 1]));
}
