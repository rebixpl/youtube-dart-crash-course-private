// Setters in Classes

/* Here is the explanation for the code above:
1. We have a class Car, that has a private field _speed and a setter and a getter 
for it.
2. The setter has some logic to check if the value is negative.
3. In the drive method, we are calling the setter, instead of setting the value 
directly.
4. In the main function, we are driving with the car, and we are also trying to 
drive with a negative speed.
5. Since the setter has some logic to check if the value is negative, it will 
throw an exception.
6. Since we are throwing an exception, we are catching it in the main function. */

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
    // wchich is not what we want, because in the setter we have some logic to check
    // if the value is negative
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stopped at $speed km/h');
  }
}
