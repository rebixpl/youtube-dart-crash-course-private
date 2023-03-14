// Unwrapping Multiple Optionals

void main(List<String> args) {
  print(getFullName(null, null)); // OUTPUT: Empty
  print(getFullName(null, 'Doe')); // OUTPUT: Empty
  print(getFullName("Joe", null)); // OUTPUT: Empty
  print(getFullName("Joe", "Doe")); // OUTPUT: Joe Doe
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    withAll([firstName, lastName], (names) => names.join(' ')) ?? "Empty";

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
