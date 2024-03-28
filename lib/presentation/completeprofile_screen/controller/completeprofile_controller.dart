import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../models/completeprofile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CompleteprofileScreen.
///
/// This class manages the state of the CompleteprofileScreen, including the
/// current completeprofileModelObj
class CompleteprofileController extends GetxController {
  ApiClient apiClient = ApiClient();

  TextEditingController chooseYourStudyController = TextEditingController();

  TextEditingController nameOfUniversityController = TextEditingController();

  TextEditingController chooseSemesterController = TextEditingController();

  TextEditingController chooseLanguageController = TextEditingController();

  Rx<CompleteprofileModel> completeprofileModelObj = CompleteprofileModel().obs;

  @override
  void onClose() {
    super.onClose();
    chooseYourStudyController.dispose();
    nameOfUniversityController.dispose();
    chooseSemesterController.dispose();
    chooseLanguageController.dispose();
  }
}
