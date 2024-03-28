import '../../../core/app_export.dart';
import '../models/aboutme_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AboutmeScreen.
///
/// This class manages the state of the AboutmeScreen, including the
/// current aboutmeModelObj
class AboutmeController extends GetxController {
  TextEditingController tellpeoplesomethingaboutyouController =
      TextEditingController();

  Rx<AboutmeModel> aboutmeModelObj = AboutmeModel().obs;

  @override
  void onClose() {
    super.onClose();
    tellpeoplesomethingaboutyouController.dispose();
  }
}
