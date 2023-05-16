/// UNARY PREFIX OPERATORS
///
/// This Dart code demonstrates the use of unary prefix operators,
/// which are operators that are applied to a single operand before the expression
/// is evaluated. It includes examples of the decrement operator (--), the
/// logical not operator (!), and the unary minus operator (-). It also demonstrates
/// the unary bitwise complement operator (~), which flips the bits of a binary number.
/// Finally, it shows that applying the unary minus operator twice to a value cancels
/// out the effect of the operator.
///

void main(List<String> args) {
  /// 4 types of operators
  /// unary prefix
  /// unary postfix
  /// binary infix
  /// compound assignment

  /// unary prefix operators
  int age = 30;
  int age2 = --age;
  print(--age); // OUTPUT: 28
  print(--age2); // OUTPUT: 28

  print(true);
  print(!true); // OUTPUT: FALSE
  print(++age2); // OUTPUT: 29

  // unary bitwise completement prefix operator
  print(~1); // OUTPUT: -2
  // it flips 0s to 1s and 1s to 0s
  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1110)

  print(age); // OUTPUT: 28
  print(-age); // OUTPUT: -28
  print(-(-age)); // OUTPUT: 28
  print(age); // OUTPUT: 28
}
