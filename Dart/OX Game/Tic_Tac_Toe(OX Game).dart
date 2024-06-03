import 'dart:io';

void DefaultPattern(List OX) {
  for (int i = 0; i < 3; i++) {
    stdout.write("\t ");

    for (int j = 0; j < 3; j++) {
      stdout.write(" ${OX[i][j]} ");
      if (j < 2) {
        stdout.write(" | ");
      }
    }
    print("");
    if (i < 2) {
      print("\t ---------------");
    }
  }
}

bool CheckWin(List OX, String Term) {
  //Check Rows
  for (int i = 0; i < 3; i++) {
    if (OX[i][0] == Term && OX[i][1] == Term && OX[i][2] == Term) {
      return true;
    }
  }

  //Check Cols
  for (int j = 0; j < 3; j++) {
    if (OX[0][j] == Term && OX[1][j] == Term && OX[2][j] == Term) {
      return true;
    }
  }

  //Check Diagonal and Anti-Diagonal
  if ((OX[0][0] == Term && OX[1][1] == Term && OX[2][2] == Term) ||
      (OX[0][2] == Term && OX[1][1] == Term && OX[2][0] == Term)) {
    return true;
  }

  return false;
}

void main() {
  int pos, x = 0;
  bool gameEnded = false;
  List OX = [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"],
  ];
  stdout.write("\n>--------Tic Tac Toe Game--------<\n\n");
  DefaultPattern(OX);
  do {
    String Term = (x % 2 == 0) ? "O" : "X";

    stdout.write("\nPlayer[$Term] Enter Position(1 to 9) : ");
    pos = int.parse(stdin.readLineSync()!);

    int row = (pos - 1) ~/ 3;
    int col = (pos - 1) % 3;

    if (pos >= 1 && pos <= 9 && OX[row][col] != "O" && OX[row][col] != "X") {
      OX[row][col] = Term;
      print("");
      DefaultPattern(OX);
      if (CheckWin(OX, Term)) {
        print("\nPlayer $Term Wins..\n");
        gameEnded = true;
        break;
      }
      x++;
    } else if (!(pos >= 1 && pos <= 9)) {
      print("\nPosition Not Valid!!");
    } else {
      print("\nPosition Allready Taken!!l");
    }
  } while (x < 9);

  if (!gameEnded) {
    print("\nGame Tie!!\n");
  }
}
