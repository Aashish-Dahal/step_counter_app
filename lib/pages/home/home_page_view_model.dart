import 'package:flutter/material.dart' show State, debugPrint;
import 'package:step_counter_app/pages/home/home_page.dart' show HomePage;
import 'package:step_counter_app/services/index.dart' show healthService;

mixin HomePageViewModel on State<HomePage> {
  int? totalSteps;

  Future getSteps() async {
    int? steps;
    try {
      steps = await healthService.getSteps();
      if (steps == -1) {
        debugPrint("Authorization not granted");
      }
    } catch (e) {
      debugPrint("Error message::::$e");
    }
    debugPrint("Total number of steps:::: $steps");
    setState(() {
      totalSteps = steps ?? 0;
    });
  }

  @override
  void initState() {
    getSteps();
    super.initState();
  }
}
