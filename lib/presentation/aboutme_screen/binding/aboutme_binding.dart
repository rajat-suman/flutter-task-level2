import 'package:app_s_application2/presentation/aboutme_screen/controller/aboutme_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutmeScreen.
///
/// This class ensures that the AboutmeController is created when the
/// AboutmeScreen is first loaded.
class AboutmeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutmeController());
  }
}
