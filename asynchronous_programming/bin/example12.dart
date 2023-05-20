// Absorbing Stream Errors

import 'dart:async';

void main(List<String> args) async {
  await for (final names in getNames().absorbErrorsUsingHandleError()) {
    print(names); // OUTPUT: John, Jane
  }

  await for (final name in getNames().absorbErrorsUsingHandles()) {
    print(name); // OUTPUT: John, Jane
  }

  await for (final names in getNames().absorbErrorsUsingTransformer()) {
    print(names); // OUTPUT: John, Jane
  }
}

extension AbsorbErrors<T> on Stream<T> {
  // Way 1 of absorbing stream errors
  Stream<T> absorbErrorsUsingHandleError() => handleError(
        (_, __) {},
      );

  // Way 2 of absorbing stream errors
  Stream<T> absorbErrorsUsingHandles() => transform(
        StreamTransformer.fromHandlers(
          handleError: (_, __, sink) => sink.close(),
        ),
      );

  // Way 3 of absorbing stream errors
  Stream<T> absorbErrorsUsingTransformer() => transform(
        StreamErrorAbsorber(),
      );
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  throw 'All out of names';
}

// Way 3 of absorbing stream errors
class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();

    stream.listen(
      controller.sink.add,
      onError: (_) {},
      onDone: controller.close,
    );

    return controller.stream;
  }
}
