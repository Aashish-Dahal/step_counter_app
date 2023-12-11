import 'package:step_counter_app/injector.dart' show healthFactory;
import 'package:step_counter_app/utils/constants.dart'
    show currentDate, dataTypesIos, midNight, permissions;

class HealthService {
  Future<int?> getSteps() async {
    final bool requested = await healthFactory
        .requestAuthorization(dataTypesIos, permissions: permissions);
    if (requested) {
      return healthFactory.getTotalStepsInInterval(currentDate, midNight);
    }
    return -1;
  }
}
