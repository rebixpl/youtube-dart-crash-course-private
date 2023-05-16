// Functions As First Class Citizens

/* Here is the explanation for the code above:
1. The minus function has two optional parameters with a default value of 10
and 5 respectively.
2. The performOperation function takes three positional parameters of type
int, int, and Function(int, int) respectively. The third parameter is a function 
that takes two integer parameters and returns an integer.
3. The add function has two optional parameters with a default value of 10
and 5 respectively.
4. The main function calls the performOperation function with the add and
minus functions as parameters. The main function prints the result of the
performOperation function. */

void main(List<String> args) {
  print(minus());
  print(minus(30, 20));
  print(minus(20, 30));

  print(
    performOperation(
      10,
      20,
      add,
    ),
  );
  print(
    performOperation(
      10,
      20,
      minus,
    ),
  );
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
