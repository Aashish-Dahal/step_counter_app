import 'package:health/health.dart' show HealthDataAccess, HealthDataType;

const dataTypesIos = [
  HealthDataType.STEPS,
];
const permissions = [HealthDataAccess.READ];
final currentDate = DateTime.now();
final midNight = DateTime(currentDate.year, currentDate.month, currentDate.day);
