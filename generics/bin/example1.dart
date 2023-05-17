// Generic Integer of Double

/* Generics in Dart let you create things that can hold different types of things. 
It's like a container that can hold anything you want. For example, you can have a 
box that can hold numbers or a box that can hold words. It helps you write code that 
works with different types without repeating yourself. */

/// EXAMPLE WITHOUT GENERICS
// void main(List<String> args) {
//   final double doubleValue = eitherIntOrDouble(WhatToReturn.double) as double;
//   print(doubleValue); // OUTPUT: 1.0

//   final int intValue = eitherIntOrDouble(WhatToReturn.int) as int;
//   print(intValue); // OUTPUT: 1
// }

// enum WhatToReturn { int, double }

// num eitherIntOrDouble(
//   WhatToReturn whatToReturn,
// ) {
//   switch (whatToReturn) {
//     case WhatToReturn.int:
//       return 1;
//     case WhatToReturn.double:
//       return 1.0;
//     default:
//       throw Exception('Unknown whatToReturn: $whatToReturn type');
//   }
// }

/// EXAMPLE WITH GENERICS
void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue); // OUTPUT: 1.0

  final int intValue = eitherIntOrDouble();
  print(intValue); // OUTPUT: 1
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not Supported Type');
  }
}
