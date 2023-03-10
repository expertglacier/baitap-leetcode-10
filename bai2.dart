/*
- Số loại kẹo tối đa có thể ăn sẽ bằng số lần ăn kẹo,
nếu số lần được ăn kẹo nhỏ hơn tổng các loại kẹo.
- Số loại kẹo tối đa có thể ăn sẽ bằng tổng các loại kẹo,
nếu tổng các loại kẹo nhỏ hơn số lần được ăn kẹo.
*/

class Solution {
  int distributeCandies(List<int> candyType) {
    int eat = candyType.length ~/ 2;

    if (candyType.toSet().length > eat) return eat;

    return candyType.toSet().length;
  }
}