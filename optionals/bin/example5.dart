/// null aware operator
///
/// The Dart code is demonstrating the null aware operator, which is used to handle
/// null values. The code shows how to use the null aware operator "?." to access
/// properties or methods of a variable that may be null, without causing an error.
/// It also shows how to use the null coalescing operator "??", to provide a default
/// value in case the variable is null.
///

void main(List<String> args) {
  String? lastName;
  // print(lastName.length); // ERROR: Error: Property 'length' cannot be accessed
  // on 'String?' because it
  // is potentially null. Try accessing using ?. instead.
  print(lastName?.length); // OUTPUT: null
  // '?.' - null aware operator

  String? nullName;

  print(lastName ?? 'Foo'); // OUTPUT: "Foo"
  print(lastName ?? nullName); // OUTPUT: null
  print(lastName ?? nullName ?? 'Bar'); // OUTPUT: "Bar"
}
