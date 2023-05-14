// extending optional types

// This Dart code defines a function getFullNameOptional() that returns a nullable
//string. It also defines a function getFullName() that returns a non-nullable string.
//The code then creates a variable fullName by using the null-aware operator ?? to
//return the value of getFullNameOptional(), or getFullName() if the former is null.

/* Then, the code defines an extension on the Object class called Describe, which 
adds a describe() method to all objects, including null objects. This method prints 
out the type and value of the object if it is not null, or a message saying that the 
object is null if it is null. Finally, the code calls the describe() method on the 
someName variable, which may be null, to print out information about the value of 
the variable. */

void main(List<String> args) {
  String? getFullNameOptional() {
    return "Bar foo";
  }

  String getFullName() {
    return 'Foo Bar';
  }

  final String fullName = getFullNameOptional() ?? getFullName();
  print(fullName); // OUTPUT: Bar foo

  final someName = getFullNameOptional();
  someName.describe(); // OUTPUT: String: Bar foo
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('The object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
