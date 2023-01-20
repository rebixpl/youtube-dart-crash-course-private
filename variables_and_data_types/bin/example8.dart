// final allows mutation of variable contents

void main(List<String> args) {
  final yourList = [1, 2, 3];

  /// Invalid code
  // yourList = [1, 2, 3, 4];

  yourList.add(4);

  print(yourList); // [1,2,3,4]
}
