/// null aware operator

void main(List<String> args) {
  String? lastName;
  // print(lastName.length); // ERROR: Error: Property 'length' cannot be accessed on 'String?' because it
  // is potentially null. Try accessing using ?. instead.
  print(lastName?.length); // OUTPUT: null
  // '?.' - null aware operator

  String? nullName;

  print(lastName ?? 'Foo'); // OUTPUT: "Foo"
  print(lastName ?? nullName); // OUTPUT: null
  print(lastName ?? nullName ?? 'Bar'); // OUTPUT: "Bar"
}
