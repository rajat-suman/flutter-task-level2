import 'package:app_s_application2/data/apiClient/api_client.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/getstarted_model.dart';

/// A controller class for the GetstartedScreen.
///
/// This class manages the state of the GetstartedScreen, including the
/// current getstartedModelObj
class GetstartedController extends GetxController {
  ApiClient apiClient = ApiClient();
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // Rx<GetstartedModel> getstartedModelObj = GetstartedModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   Get.offNamed(
    //     AppRoutes.completeprofileScreen,
    //   );
    // });
  }

}
