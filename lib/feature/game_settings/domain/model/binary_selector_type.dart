enum BinarySelectorType {
  enabled,
  disabled;

  @override
  String toString() {
    switch (this) {
      case BinarySelectorType.enabled:
        return 'Вкл.';
      case BinarySelectorType.disabled:
        return 'Выкл';
    }
  }
}
