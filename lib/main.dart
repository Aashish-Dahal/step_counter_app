import 'package:flutter/material.dart' show runApp;
import 'package:step_counter_app/app.dart' show MyApp;
import 'package:step_counter_app/injector.dart' show initializeDependencies;

void main() {
  initializeDependencies();
  runApp(const MyApp());
}
