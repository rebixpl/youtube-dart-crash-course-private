// nullable type promotion

void main(List<String> args) {
  // you can promote a type to not nullable by checking first if it is null or not
  final String? firstName = null;
  if (firstName == null) {
    print('firstNmae value is null');
    // var xxxx = firstName.length; // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  } else {
    final int length = firstName.length;
    print(length);
  }
}
