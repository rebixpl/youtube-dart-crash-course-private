// Default Values For Optionals

/* This code is defining a function called fullName that takes two optional 
string parameters, firstName and lastName. It concatenates the two parameters
 with a space character and returns the result as a string.

The interesting part is the extension Defaultvalues defined on a generic 
type T? that provides a method called orDefault. This method checks if the 
value is null, and if it is, returns a default value for that type 
(0 for int, 0.0 for double, an empty string for String, and false for bool).

The fullName function uses this extension method to provide default 
values for the parameters if they are null. */

void main(List<String> args) {
  print(fullName(null, null)); // OUTPUT:
  print(fullName("Joe", null)); // OUTPUT: Joe
  print(fullName(null, "Doe")); // OUTPUT:  Doe
  print(fullName("Joe", "Doe")); // OUTPUT: Joe Doe
}

String fullName(
  String? firstName,
  String? lastName,
) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension Defaultvalues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
}
