// SIMPLE MiXINS

// What are mixins in dart?
// Mixins in Dart are a way to reuse code across multiple class hierarchies without
// having to rely on inheritance. Mixins allow a class to include methods and properties
// from one or more other classes without having to subclass them.

// Mixins are useful for sharing behavior across multiple class hierarchies, and can
// be especially helpful in cases where multiple classes need to implement the same behavior
// but cannot be grouped together under a common superclass. Mixins are also a powerful tool for
// reducing code duplication and making code more modular and reusable.

void main(List<String> args) {
  final person = Person();
  print(person.speed); // 0.0
  person.walk(speed: 10.0); // Person is walking with speed 10.0
  print(person.speed); // 10.0
  person.jump(speed: 20.0); // Person is jumping with speed 20.0
  print(person.speed); // 20.0
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping with speed $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking with speed $speed');
    this.speed = speed;
  }
}

// When it comes to mixins we say 'with' keyword
class Person with HasSpeed, CanWalk, CanJump {
  @override
  double speed;

  Person() : speed = 0.0;
}
