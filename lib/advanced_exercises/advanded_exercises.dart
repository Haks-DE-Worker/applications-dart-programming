import 'dart:io';

void main() {
  countWordsInFile();
}

// Function to read the file and count the number of words in the file
void countWordsInFile() {
  print(
      "This exercse is about reading of a file by giving the number of words in the file");
  try {
    // Reading the file as a string
    final path = '../forty_words.txt';
    final file = File(path);
    file.readAsString().then((value) {
      List<String> wordsList = value.split(" ");
      int numberOfWords = wordsList.length;
      print("The number of words in the file is: $numberOfWords");
    });
    // Reading the file as bytes
    file.readAsBytes().then((onValue) {
      print('The object type is: ${onValue.runtimeType}');
      print("\nThe size of the file is: ${onValue.length} bytes");
    });
    // reading the file as lines
    file.readAsLines().then((onValue) {
      print("\nThe number of lines in the file is: ${onValue.length}");
    });
    // Read as StringSync
    final fileContent = file.readAsStringSync();
    print("\nThe content of the file is: $fileContent");
    // Read as BytesSync
    final fileContentBytes = file.readAsBytesSync();
    print("\nThe content of the file as bytes is: $fileContentBytes");
    // Read as LinesSync
    final fileContentLines = file.readAsLinesSync();
    print("\nThe content of the file as lines is: $fileContentLines");
  } catch (e) {
    print("An error occured: $e");
  }
}

//
