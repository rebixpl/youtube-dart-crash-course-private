// Stream Controllers

import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController<String>();
  controller.sink.add('Hello');
  controller.sink.add('World');
  await for (final name in controller.stream) {
    print(name);
  }
  controller.close();
}
