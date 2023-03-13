void main(List<String> args) {
  const age1 = 64;
  const age2 = 30;
  print(age1 + age2);
  print(age1 + age2 + 30);
  print(age1 - age2);
  print(age1 * age2);
  const double divided = age1 / age2; // OUTPUT: 2.13333333333
  print(divided);
  // Truncating Divider Operator
  const int intDivided = age1 ~/ age2; // OUTPUT: 2
  print(intDivided);
}
