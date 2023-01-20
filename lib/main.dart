import 'package:alias/core/application.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:flutter/material.dart';

void main() {
  di.initLocator();
  runApp(const Application());
}
