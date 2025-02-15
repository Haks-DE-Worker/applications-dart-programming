import 'dart:async';

void main() async {
  print('Getting data ...');
  String data = await asyncFunction();
  print('Data: $data');
  print(await simulateAnOperation(11, 22));
  StreamController<int> numberStream = await createNumberStream();
  await for (int i in numberStream.stream) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
  Future<String> firstFuture = combinationAsyncFunction('First', 5);
  Future<String> secondFuture = combinationAsyncFunction('Second', 3);
  Future<String> thirdFuture = combinationAsyncFunction('Third', 10);

  List<String> afterTreatment =
      await Future.wait([firstFuture, secondFuture, thirdFuture]);
  for (String result in afterTreatment) {
    print(result);
  }
  asyncMethod();
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

// 24- Futures.wait illustration : Future Combinations
Future<String> combinationAsyncFunction(String name, int second) async {
  await Future.delayed(Duration(seconds: second));
  return 'The server work on $name in $second seconds';
}

// 24- await/async
Future asyncMethod() async {
  await Future.delayed(Duration(seconds: 3));
  print(
      'This was a method which use async and await keywords to make it asynchronous');
}
