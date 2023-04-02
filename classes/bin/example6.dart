// Setters in Classes

void main(List<String> args) {
  final car = Car();

  try {
    car.drive(speed: 10);
    car.drive(speed: -1);
  } catch (e) {
    print(e); // OUTPUT: Exception: Speed cannot be negative
  }
}

class Car {
  int _speed = 0;

  // Getter
  int get speed => _speed;

  // Setter
  set speed(int value) {
    if (value < 0) {
      throw Exception('Speed cannot be negative');
    } else {
      _speed = value;
    }
  }

  // Methods
  void drive({required int speed}) {
    this.speed = speed;
    // this.speed means that we are calling the setter
    // if we were to write _speed = speed, we would be setting the value directly
    // wchich is not what we want, because in the setter we have some logic to check if the value is negative
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stopped at $speed km/h');
  }
}
