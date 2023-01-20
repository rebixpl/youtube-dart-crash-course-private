// mutating variables

void main(List<String> args) {
  var address = '123 Main St';
  print(address);
  address = '456 Main St';
  print(address);

  // Invalid code
  // address = 2137; // A value of type 'int' can't be assigned to a variable of type 'String'.
}
