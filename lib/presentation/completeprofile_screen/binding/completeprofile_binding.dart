import 'package:app_s_application2/presentation/completeprofile_screen/controller/completeprofile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompleteprofileScreen.
///
/// This class ensures that the CompleteprofileController is created when the
/// CompleteprofileScreen is first loaded.
class CompleteprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteprofileController());
  }
}
