// assigning variables to each other

void main(List<String> args) {
  String name = 'Foo';
  var address = '';

  address = name;

  print(address);

  // invalid operation
  // const age = 20;
  // address = age;
}
