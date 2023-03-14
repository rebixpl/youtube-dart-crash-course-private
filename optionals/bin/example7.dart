// Force Unwrapping

void main(List<String> args) {
  try {
    final String? firstName = null;
    print(
        firstName!); // Unhandled exception: Null check operator used on a null value
    // You should never write code like this,
    // this operator - ! - is very dangerous
  } catch (error) {
    print(error);
  }
}
