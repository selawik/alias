enum CommandMoveSelectorType {
  halfOfMinute,
  minute,
  minuteAndHalf;

  @override
  String toString() {
    switch (this) {
      case CommandMoveSelectorType.halfOfMinute:
        return '30 сек';
      case CommandMoveSelectorType.minute:
        return '60 сек';
      case CommandMoveSelectorType.minuteAndHalf:
        return '90 сек';
    }
  }
}
