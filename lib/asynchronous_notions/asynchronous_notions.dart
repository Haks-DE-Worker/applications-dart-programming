import 'dart:async';

void main() async {
  // print('Getting data ...');
  // String data = await asyncFunction();
  // print('Data: $data');
  print(await simulateAnOperation(11, 22));
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
