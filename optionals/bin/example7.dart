// Force Unwrapping

/* This Dart code shows an example of force unwrapping with the null check 
operator - "!".

In the code, a variable firstName is declared as a nullable string with a value 
of null. The code then tries to print out firstName!, which is the null check 
operator ! used to force the unwrapping of firstName. However, since firstName 
is null, this will result in a runtime exception that is caught by a try-catch 
block.

The comment in the code warns that this operator is very dangerous and should 
not be used since it can result in unexpected runtime errors if used with a 
null value.
*/

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
