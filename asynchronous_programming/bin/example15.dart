// Broadcast Streams

import 'dart:async';

void main(List<String> args) async {
  await nonBroadcastStreamExample();
  print('------------------');
  await broadcastStreamExample();
}

Future<void> broadcastStreamExample() async {
  late final StreamController<String> controller;

  controller = StreamController<String>.broadcast();

  final sub1 = controller.stream.listen((event) {
    print('sub1: $event');
  });

  final sub2 = controller.stream.listen((event) {
    print('sub2: $event');
  });

  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');

  controller.close();

  controller.onCancel = () {
    print('onCancel called');
    sub1.cancel();
    sub2.cancel();
  };
}

Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();

  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');

  try {
    await for (final name in controller.stream) {
      print(name);
      await for (final name in controller.stream) {
        print(name);
      }
    }
  } catch (e) {
    print(e);
  }
}
