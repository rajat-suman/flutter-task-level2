import '../../../core/app_export.dart';
import '../models/chooselang_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChooselangScreen.
///
/// This class manages the state of the ChooselangScreen, including the
/// current chooselangModelObj
class ChooselangController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ChooselangModel> chooselangModelObj = ChooselangModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
