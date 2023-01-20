// assigning const and final

void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;

  print(thisList); // [1,2,3]
  print(thatList); // [1,2,3]

  const nextList = thisList;
  print(nextList); // [1,2,3]

  /// Invalid code
  // const someList = thatList; // ERROR: Const variables must be initialized with a constant value.
}
