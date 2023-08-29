enum WordsToWin {
  twentyFive,
  forty,
  eighty,
  hundred,
  hundredAndTwenty;

  int get value {
    switch (this) {
      case WordsToWin.twentyFive:
        return 15;
      case WordsToWin.forty:
        return 20;
      case WordsToWin.eighty:
        return 30;
      case WordsToWin.hundred:
        return 50;
      case WordsToWin.hundredAndTwenty:
        return 60;
    }
  }
}
