// Stream

// future => START| ---- 1 SEC ---- X |STOP
// Future is a single asynchronous event that can be listened to.
// stream => START| ---- 1 SEC ---- X ---- 1 SEC ---- X ---- XXX |STOP
// Stream is a sequence of asynchronous events that can be listened to.

void main(List<String> args) async {
  // To get the stream values we can use await for loop
  await for (final number in getNumbers()) {
    print(number);
  }

  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

// we use async* to create a stream
Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
  // yield 'Jane'; // dead code, because the exception is thrown
}
