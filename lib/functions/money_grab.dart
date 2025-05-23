import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */

int PlaceBet(int bankRoll){
  bool active = true;
  while (active) {
    print('Place your bet');
    int bet = int.parse(stdin.readLineSync()!);
    if (bet > bankRoll || bet <= 0) {
      print('Invalid bet');
      return 0;
    } else {
      bankRoll = bankRoll - bet;
    }
    active = false;
  }
  return bankRoll;
}

int BuyIn(){
print('Choose a starting buy in');
int input = int.parse(stdin.readLineSync()!);
return input;
}

