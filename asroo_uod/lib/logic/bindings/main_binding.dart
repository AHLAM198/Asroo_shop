import 'package:asroo_uod/logic/controllers/main_controller.dart';
import 'package:asroo_uod/logic/controllers/settings_controller.dart';
import 'package:get/instance_manager.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
  }
}
