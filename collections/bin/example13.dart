// Collection Comprehensions

/* This Dart code demonstrates Collection Comprehensions, which are a concise 
way of creating collections in Dart. The code shows examples of using collection 
comprehensions to filter elements from a list, generate even numbers, and create 
a dictionary mapping the length of a name to the name itself. The code also shows 
how to use set comprehensions to remove elements containing 'a', 'b', or 'c' from 
a string. */

void main(List<String> args) {
  // final String string = 'abracadabra';
  // var result = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }
  // print(result); // OUTPUT: rdr

  final String string = 'abracadabra';
  var allExceptAbc = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(allExceptAbc); // OUTPUT: {r, d}

  print('-----------------------');
  final allNumbers = Iterable.generate(100);

  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];
  print(
    evenNumbers,
  ); // OUTPUT: [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98]

  print('-----------------------');

  final evenNumbersFunctional = allNumbers.where((e) => e % 2 == 0);

  print(
    evenNumbersFunctional,
  ); // OUTPUT: (0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, ..., 96, 98)

  print('-----------------------');
  final names = ['John Doe', 'Jane Smith', 'Alice Jones'];
  final namesAndLength = {
    for (final name in names) name.length: name,
  };
  print(
      namesAndLength); // OUTPUT: {8: John Doe, 10: Jane Smith, 11: Alice Jones}
}
