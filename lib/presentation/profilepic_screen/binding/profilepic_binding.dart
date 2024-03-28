import 'package:app_s_application2/presentation/profilepic_screen/controller/profilepic_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilepicScreen.
///
/// This class ensures that the ProfilepicController is created when the
/// ProfilepicScreen is first loaded.
class ProfilepicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilepicController());
  }
}
