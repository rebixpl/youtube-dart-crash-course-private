// mutating of const contents

void main(List<String> args) {
  const myList = [1, 2, 3];

  /// Invalid code
  // myList = [4, 5, 6];
  // myList.add(3); // Unsupported operation: Cannot add to an unmodifiable list
  print(myList);
}
