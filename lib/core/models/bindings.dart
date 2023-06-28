import 'package:calculator_app/core/models/default_calculate_controller.dart';
import 'package:get/instance_manager.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculateController(), fenix: true);
  }
}
