import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../models/profilepic_model.dart';

/// A controller class for the ProfilepicScreen.
///
/// This class manages the state of the ProfilepicScreen, including the
/// current profilepicModelObj
class ProfilepicController extends GetxController {
  ApiClient apiClient = ApiClient();
  Rx<ProfilepicModel> profilepicModelObj = ProfilepicModel().obs;
}
