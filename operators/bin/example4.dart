/// binary infix operators
void main(List<String> args) {
  // they're usually called 'in'fix because they operate between two uh values and they sit
  // in between them that's why why they're called infix

  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20); // truncating division
  print(age % 20); // remainder
  print(age == 20);
  print(age != 20);

  print(age > 20); // true
  print(age < 20); // false
  print(age >= 20); // true
  print(age <= 20); // false

  // bitwise infix operators
  print(age & 20); // bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  print(age | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0
  print(age ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0

  // bitwise infix shift operators
  print(age << 20);
  print(age >> 20);

  /// 0110 0011
  /// shift left by 2 (<<)
  /// 1000 1100
}
