enum CommandMoveModeSelector {
  halfOfMinute,
  minute,
  minuteAndHalf;

  @override
  String toString() {
    switch (this) {
      case CommandMoveModeSelector.halfOfMinute:
        return '30 сек';
      case CommandMoveModeSelector.minute:
        return '60 сек';
      case CommandMoveModeSelector.minuteAndHalf:
        return '90 сек';
    }
  }
}
