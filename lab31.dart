import 'dart:math' show Random;
import 'dart:io';

void main() {
  var MAX = 200;
  var randomizer = new Random();
  var num = randomizer.nextInt(MAX);
  
  while (true) {
    print("Please guess a number between 0 and $MAX:");
    var guess = stdin.readLineSync();
	var answer = int.parse(guess ?? '');

    if (answer == num)
      print("Success");
if (answer < num ) {
      print('Too low!');
    } else if (answer > num ) {
      print('Too high!');
    }
  }
    
  print("Goodbye");
}