class Solution {
  bool isMonotonic(List<int> nums) {
    // Biến increasing kiểm tra xem list có tăng dần không, biến decreasing ngược lại.
    bool increasing = false;
    bool decreasing = false;

    // Constraints của đề bài là nums.length có thể bằng 1.
    if (nums.length == 1) return true;

    // Kiểm tra list có đúng chỉ tăng dần hoặc giảm dần.
    for (int i = 0; i < nums.length; i++) {
      // Nếu phần tử liền sau lớn hơn phần tử hiện tại.
      if (i < nums.length - 1 && nums[i] < nums[i + 1]) {
        increasing = true;
        // Nếu phần tử liền sau nhỏ hơn phần tử hiện tại.
      } else if (i < nums.length - 1 && nums[i] > nums[i + 1]) {
        decreasing = true;
      }

      // Kiểm tra nếu list có cả 2 trường hợp tăng dần và giảm dần.
      if (increasing == true && decreasing == true) return false;
    }

    return true;
  }
}