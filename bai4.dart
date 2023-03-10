/*
1/ Đảo ngược các kí tự trong s, ở vị trí từ 1 đến k.
2/ Giữ nguyên các kí tự trong s, ở vị trí từ k+1 đến 2k.
3/ Lặp lại quá trình trên cho các khối tiếp theo của s, bắt đầu từ vị trí 2k + 1.
3.1/ Nếu còn ít hơn k kí tự, đảo ngược tất cả chúng.
3.2/ Nếu có ít hơn 2*k kí tự, nhưng lớn hơn hoặc bằng k kí tự, thì đảo ngược k kí
 tự đầu và để nguyên các kí tự còn lại.
*/

import 'dart:math';

class Solution {
  String reverseStr(String s, int k) {
    List<String> sList = s.split("");

    for (int i = 0; i < sList.length; i += 2 * k) {
      int left = i;
      // Gán min(i + k - 1, sList.length - 1) để tránh trường hợp chuỗi s có một kí tự và
      // k > 1, chương trình sẽ bị lỗi khi thực hiện gán sList[left++] = sList[right];
      int right = min(i + k - 1, sList.length - 1);

      // Đổi vị trí các phần tử đối xứng nhau (đảo ngược).
      while (left < right) {
        String temp = sList[left];
        sList[left++] = sList[right];
        sList[right--] = temp;
      }
    }
    return sList.join();
  }
}