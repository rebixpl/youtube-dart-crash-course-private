// SIMPLE MIXINS

void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10.0);
  person.walk(speed: 5.0);
  print('Person speed: ${person.speed}');

  // OUTPUT:
  // Person is jumping with speed 10.0
  // Person is walking with speed 5.0
  // Person speed: 5.0
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping with speed $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking with speed $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
