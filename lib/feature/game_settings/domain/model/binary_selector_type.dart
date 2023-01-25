enum BinarySelectorMode {
  enabled,
  disabled;

  @override
  String toString() {
    switch (this) {
      case BinarySelectorMode.enabled:
        return 'Вкл.';
      case BinarySelectorMode.disabled:
        return 'Выкл';
    }
  }
}
