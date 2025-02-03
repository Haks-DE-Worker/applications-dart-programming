import 'dart:io';
import 'dart:math';

int countOccurrences(List<dynamic> list, dynamic element) {
  return list.where((e) => e == element).length;
}

void main() {
  print('Print the number of exercise you want to visualize : ');
  try {
    int exercice = int.parse(stdin.readLineSync()!);
    switch (exercice) {
      case 1:
        print('Print of : Hello, World! was the exercise gain.');
        break;
      case 2:
        print('Print the first number of the operation.');
        try {
          double a = double.parse(stdin.readLineSync()!);
          print('Print the second number of the operation.');
          double b = double.parse(stdin.readLineSync()!);
          print('Choose the operation you want to do :');
          print('1. Addition');
          print('2. Subtraction');
          print('3. Multiplication');
          print('4. Division');
          int operation = int.parse(stdin.readLineSync()!);
          switch (operation) {
            case 1:
              print('The result of the addition is : ${a + b}');
              break;
            case 2:
              print('The result of the subtraction is : ${a - b}');
              break;
            case 3:
              print('The result of the multiplication is : ${a * b}');
              break;
            case 4:
              print('The result of the division is : ${a / b}');
              break;
            default:
              print('Invalid operation');
          }
        } on FormatException {
          print('Invalid number');
        } catch (e) {
          print('An error occurred');
        }
        break;
      case 3:
        try {
          print('Print a number : ');
          double number = double.parse(stdin.readLineSync()!);
          if (number % 2 == 0) {
            print('The number is even.');
          } else {
            print('The number is odd.');
          }
        } on FormatException {
          print('Invalid number');
        }
        break;
      case 4:
        try {
          print('Print a number between 1 and 10 : ');
          int number = int.parse(stdin.readLineSync()!);
          print('The multiplication table of $number is :');
          for (int i = 1; i <= 10; i++) {
            print('$number x $i = ${number * i}');
          }
        } on FormatException {
          print('Invalid number. Type a valid number.');
        }
        break;
      case 5:
        try {
          print('Print a number : ');
          int number = int.parse(stdin.readLineSync()!);
          int soma = 0;
          for (int i = 1; i <= number; i++) {
            soma += i;
          }
          print('The sum of the numbers from 1 to $number is : $soma');
        } on FormatException {
          print('Invalid number. Type a valid number.');
        }
        break;
      case 6:
        Random random = Random();
        List<int> numbers = List.generate(100, (_) => random.nextInt(107));
        List<int> evenNumbers =
            numbers.where((element) => element % 2 == 0).toList();
        print(
            'The list of even numbers from that list $numbers is : $evenNumbers');
        break;
      case 7:
        Random random = Random();
        List<dynamic> numbers = List<dynamic>.generate(10, (_) {
          if (random.nextBool()) {
            return random.nextInt(100);
          } else {
            return random.nextDouble() * 5;
          }
        });
        print('Print a number you want to check if it is in the list : ');
        try {
          dynamic number = stdin.readLineSync()!;
          if (numbers.contains(number)) {
            print('The number $number is in the list $numbers.');
          } else {
            print('The number $number is not in the list $numbers.');
          }
        } catch (e) {
          print('Invalid number');
        }
        break;
      case 8:
        Random random = Random();
        List<int> listOne = List.generate(10, (_) => random.nextInt(107));
        List<int> listTwo = List.generate(6, (_) => random.nextInt(109));
        List<int> concatList = [...listOne, ...listTwo];
        List<int> commonNumbers = [];
        for (int i = 0; i < concatList.length; i++) {
          int countOccurrences =
              concatList.where((element) => element == concatList[i]).length;
          if (countOccurrences >= 1 && !commonNumbers.contains(concatList[i])) {
            commonNumbers.add(concatList[i]);
          }
        }
        commonNumbers.sort();
        print(
            'The concatenation of two lists make : $concatList and the common numbers removal make : $commonNumbers');
        break;
      case 9:
        Random random = Random();
        print(
            "This exercise make us to count the occurrences of a number in a list after that store its in a Map.");
        List<int> list = List<int>.generate(12, (_) => random.nextInt(34));
        List<int> commonNumbers = [];
        for (int i = 0; i < list.length; i++) {
          int countOccurrences =
              list.where((element) => element == list[i]).length;
          if (countOccurrences >= 1 && !commonNumbers.contains(list[i])) {
            commonNumbers.add(list[i]);
          }
        }
        commonNumbers.sort();
        print('We have the initial list : $list');
        Map<int, int> occurrencesMap = {
          for (int number in commonNumbers)
            number: countOccurrences(list, number)
        };
        print(occurrencesMap);
        break;
      case 10:
        print('The exercise request us to sort a list of numbers.');
        Random random = Random();
        List<int> list =
            List<int>.generate(10, (_) => random.nextInt(max(10, 100)));
        print('The initial list is : $list');
        list.sort();
        print('The sorted list in ascending order is : $list');
        list.sort((a, b) => b.compareTo(a));
        print('The sorted list in descending order is : $list');
        break;
      case 11:
        print(
            'The exercise request us to write a function to determine the factorial of a number.');
        void factorialNumber(int number) {
          int factorial = 1;
          if (number == 0) {
            print('The factorial of $number is : $factorial');
          } else {
            for (int i = 1; i <= number; i++) {
              factorial *= i;
            }
            print('The factorial of $number is : $factorial');
          }
        }
        print('Print a number to calculate its factorial : ');
        try {
          int number = int.parse(stdin.readLineSync()!);
          factorialNumber(number);
        } on FormatException {
          print('Invalid number. Type a valid number.');
        }
        break;
      case 12:
        int recursiveSummaFunction(int number) {
          if (number == 1) {
            return 1;
          } else {
            int sum = number + recursiveSummaFunction(number - 1);
            return sum;
          }
        }
        print(
            'The exercise request us to write a recursive function to calculate the sum of number between one and a given number.');
        print('Print a number to calculate the sum of numbers : ');
        try {
          int number = int.parse(stdin.readLineSync()!);
          print(
              'The sum of numbers from 1 to $number is : ${recursiveSummaFunction(number)}.');
        } on FormatException {
          print('Invalid number. Type a valid number.');
        }
        break;
      case 13:
        print(
            'The exercise request us to write a function who take two required arguments and one optional.');
        void printArguments(int a, int b, [int c = 0]) {
          print('The first argument is : $a');
          print('The second argument is : $b');
          print('The third argument was the optional : $c');
        }
        try {
          print('Print the first argument : ');
          int a = int.parse(stdin.readLineSync()!);
          print('Print the second argument : ');
          int b = int.parse(stdin.readLineSync()!);
          print('Do you want to give the third argument : ');
          try {
            print('Print 1 to accept and any other number to refuse : ');
            int intention = int.parse(stdin.readLineSync()!);
            if (intention == 1) {
              print('Print the third argument : ');
              int c = int.parse(stdin.readLineSync()!);
              printArguments(a, b, c);
            } else {
              printArguments(a, b);
            }
          } on FormatException {
            print('Invalid choice. Type a valid number.');
          }
        } on FormatException {
          print('Invalid number. Type a valid number.');
        }
        break;
      case 14:
        print(
            'The exercise request us to write an anonymous function to sort a list.');
        var anonymousFunction = (List<int> list) {
          list.sort();
          return list;
        };
        Random random = Random();
        List<int> list =
            List<int>.generate(10, (_) => random.nextInt(max(12, 99)));
        print('The initial list is : $list');
        print('The sorted list is : ${anonymousFunction(list)}');
        break;
      case 15:
        print(
            'The exercise request us to write a generic function which take a list of values and retur the first value.');
        T? getFirstElement<T>(List<T> list) {
          return list.isNotEmpty ? list.first : null;
        }
        List<dynamic> list = [1, "AGNIDE", 3.14, true];
        print('The list is : $list');
        print('The first element of the list is : ${getFirstElement(list)}');
        break;
      default:
        print('Invalid exercise number.');
    }
  } on FormatException {
    print('Invalid input. Please enter a valid number.');
  } catch (e) {
    print('An error occurred: $e');
  }
}
