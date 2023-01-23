enum CommandMoveTimeEnum {
  halfOfMinute,
  minute,
  minuteAndHalf;

  @override
  String toString() {
    switch (this) {
      case CommandMoveTimeEnum.halfOfMinute:
        return '30 сек';
      case CommandMoveTimeEnum.minute:
        return '60 сек';
      case CommandMoveTimeEnum.minuteAndHalf:
        return '90 сек';
    }
  }
}
