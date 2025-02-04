import 'dart:async';
import 'dart:io';

void main() async {
  print('Getting data ...');
  String data = await asyncFunction();
  print('Data: $data');
}

Future<String> asyncFunction() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hello, World!';
}
