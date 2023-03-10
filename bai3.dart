class Solution {
  bool backspaceCompare(String s, String t) {
    // Tạo 2 biến stackS và stackT lưu giá trị của chuỗi s và t
    // sau khi xoá các kí tự liền trước kí tự #, và kí tự #.
    List<String> stackS = [];
    List<String> stackT = [];

    // Xoá các kí tự liền trước kí tự #, và kí tự # trong chuỗi s,
    // các kí tự còn lại được thêm vào list stackS.
    for (int i = 0; i < s.length; i++) {
      if (s[i] != "#") {
        stackS.add(s[i]);
      } else if (s[i] == "#" && stackS.isNotEmpty) {
        // Thêm điều kiện stackS.isNotEmpty để tránh khi stackS rỗng
        // thực hiện xoá trong stackS sẽ bị lỗi.
        stackS.removeLast();
      }
    }

    // Xoá các kí tự liền trước kí tự #, và kí tự # trong chuỗi t,
    // các kí tự còn lại được thêm vào list stackT.
    for (int i = 0; i < t.length; i++) {
      if (t[i] != "#") {
        stackT.add(t[i]);
      } else if (t[i] == "#" && stackT.isNotEmpty) {
        // Thêm điều kiện stackT.isNotEmpty để tránh khi stackT rỗng
        // thực hiện xoá trong stackT sẽ bị lỗi.
        stackT.removeLast();
      }
    }

    return stackS.join() == stackT.join();
  }
}