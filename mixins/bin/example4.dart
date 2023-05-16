// LIMITING MIXINS TO DATA TYPES

void main(List<String> args) {
  Human().run(); // OUTPUT: Human is running
}

/// The CanRun mixin extends Has2Feet and defines a run method that will print
/// a message. This means that any class that uses the CanRun mixin will inherit
/// the Has2Feet class and the ability to run.

class Has2Feet {
  const Has2Feet();
}

/// The Human class extends the Has2Feet class and adds the abilities defined by
/// the CanRun mixin. This means that instances of the Human class will have the
/// run() method defined in the CanRun mixin, and also inherit any properties or
/// methods from the Has2Feet class.
/// In other words, the Human class represents a type of creature that has two
/// feet and can run.
class Human extends Has2Feet with CanRun {
  const Human();
}

/// This is a Dart mixin called CanRun that defines a behavior for an object with
/// the run() method. The on Has2Feet part indicates that this mixin can only be
/// applied to a class that extends or implements the Has2Feet class. In other
/// words, this mixin can only be used with classes that have the Has2Feet
/// behavior.
mixin CanRun on Has2Feet {
  void run() => print('$runtimeType is running');
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}

/// The error occurs because the CanRun mixin is defined to only work with classes 
/// that extend or implement the Has2Feet class, but the Fish2 class extends the 
/// HasNoFeet class instead. Since Fish2 does not extend Has2Feet, it cannot use 
/// the CanRun mixin.
/*class Fish2 extends HasNoFeet with CanRun {
   const Fish2();
  } */
