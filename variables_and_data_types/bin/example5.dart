// assigning to constant varaibles

// ignore_for_file: unused_local_variable

void main(List<String> args) {
  final age = 10;

  /// constants cannot be assigned a non-constant value
  /// So this is an invalid operation
  // const age2 = age; // ERROR: Const variables must be initialized with a constant value.
  final age3 = age;
}
