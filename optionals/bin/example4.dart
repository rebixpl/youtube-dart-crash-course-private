/// nullable default values

void main(List<String> args) {
  int age;
  // print(age); // Error: Non-nullable variable 'age' must be assigned before it can be used.

  // String? lastName;
  // print(lastName); // OUTPUT: null

  String? lastName;
  lastName ??=
      "Steve"; // It tells dart to assign the value on the right to variable
  // on the left side ONLY IF the variable on the left side is null
  print(lastName); // OUTPUT: Steve

  String? lastName2;
  lastName2 = "Elon";
  lastName2 ??=
      "Steve"; // It tells dart to assign the value on the right to variable
  // on the left side ONLY IF the variable on the left side is null
  print(lastName2); // OUTPUT: Elon
}
