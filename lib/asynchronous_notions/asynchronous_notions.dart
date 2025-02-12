import 'dart:async';

void main() async {
  // print('Getting data ...');
  // String data = await asyncFunction();
  // print('Data: $data');
  // print(await simulateAnOperation(11, 22));
  StreamController<int> numberStream = await createNumberStream();
  await for (int i in numberStream.stream) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}

// Simple function that returns a Future
Future<String> asyncFunction() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hello, World!';
}

//
Future<String> simulateAnOperation(int a, int b) async {
  try {
    print("Getting data .....");
    await Future.delayed(Duration(seconds: 15));
    int c = a + b;
    return 'The result for sum operation is $c';
  } on FormatException {
    return "An error occured ! Giive right number";
  }
}

// 23- Numbers Stream

Future<StreamController<int>> createNumberStream() async {
  StreamController<int> numberStream = StreamController<int>();
  for (int i = 1; i <= 10; i++) {
    numberStream.add(i);
  }
  numberStream.close();
  return numberStream;
}
