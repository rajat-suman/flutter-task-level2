import 'package:app_s_application2/presentation/chooselang_screen/controller/chooselang_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooselangScreen.
///
/// This class ensures that the ChooselangController is created when the
/// ChooselangScreen is first loaded.
class ChooselangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooselangController());
  }
}
