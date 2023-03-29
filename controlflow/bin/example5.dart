// Switch Statement
void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('1');
  describe({'1': 'a'});
  describe(true);
  describe([1, 2]);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('This is a double');
      break;
    case String:
      print('This is a string');
      break;
    case bool:
      print('This is a boolean');
      break;
    case Map<String, String>:
      print('This is a map');
      break;
    default:
      print('This is something else');
      break;
  }
}
