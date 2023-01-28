enum CommandMoveMode {
  halfOfMinute,
  minute,
  minuteAndHalf;

  @override
  String toString() {
    switch (this) {
      case CommandMoveMode.halfOfMinute:
        return '30 сек';
      case CommandMoveMode.minute:
        return '60 сек';
      case CommandMoveMode.minuteAndHalf:
        return '90 сек';
    }
  }

  Duration getDuration() {
    switch (this) {
      case CommandMoveMode.halfOfMinute:
      return const Duration(seconds: 30);
      case CommandMoveMode.minute:
        return const Duration(seconds: 60);
      case CommandMoveMode.minuteAndHalf:
        return const Duration(seconds: 90);
    }
  }
}
