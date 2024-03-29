import 'dart:io';

import 'package:app_s_application2/core/app_export.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:app_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'controller/profilepic_controller.dart';

class ProfilepicScreen extends GetWidget<ProfilepicController> {
  ProfilepicScreen({Key? key}) : super(key: key);
  dynamic argumentData = Get.arguments;
  XFile? imageFile = null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_profile_picture".tr,
                                  style: CustomTextStyles
                                      .displaySmallSFProDisplay)),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 336.h,
                                  margin: EdgeInsets.only(right: 21.h),
                                  child: Text("msg_upload_a_profile".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium!
                                          .copyWith(height: 1.35)))),
                          SizedBox(height: 100.v),
                          Stack(children: [
                            SizedBox(
                              width: 250,
                              height: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(1000),
                                child: imageFile==null ? SvgPicture.asset(
                                  ImageConstant.imgGroup2,
                                  fit: BoxFit.cover,
                                ) : Image.file(File(imageFile?.path??"")),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      if (Platform.isAndroid)
                                        _settingModalBottomSheet(context);
                                    },
                                    child: Text("lbl_upload".tr,
                                        style: theme.textTheme.titleLarge),
                                  ),
                                ),
                              ),
                            )
                          ]),


                          SizedBox(height: 129.v),
                          Opacity(
                              opacity: 0.5,
                              child: CustomElevatedButton(
                                  text: "msg_complete_registration".tr,
                                  onPressed: () {
                                    onTapNext();
                                  },
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL8)),
                          SizedBox(height: 16.v),
                          Text("msg_skip_this_step_and".tr, // buttonStyle:
                              //     CustomButtonStyles.fillOnPrimaryContainer,
                              style: CustomTextStyles.titleMediumPrimary)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 26.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 17.v, bottom: 22.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          Container(
              height: 44.adaptSize,
              width: 44.adaptSize,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.h),
                            border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 2.h)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(11.h, 15.v, 11.h, 12.v),
                        child: Text("lbl_3_3".tr,
                            style: theme.textTheme.labelLarge)))
              ]))
        ]);
  }

  onTapNext() {
    Map<String, String> map = Map();
    map['profilePic'] = "";

    controller.apiClient
        .updateUser(argumentData['userId'], map)!
        .then((value) => {
              Get.toNamed(
                AppRoutes.profilepicScreen,
              )
            });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  //********************** IMAGE PICKER
  Future imageSelector(BuildContext context, String pickerType) async {
    switch (pickerType) {
      case "gallery":

        /// GALLERY IMAGE PICKER
        imageFile = await ImagePicker()
            .pickImage(source: ImageSource.gallery, imageQuality: 90);
        break;

      case "camera": // CAMERA CAPTURE CODE
        imageFile = await ImagePicker()
            .pickImage(source: ImageSource.camera, imageQuality: 90);
        break;
    }

    if (imageFile != null) {
      print("You selected  image : " + imageFile!.path);
    } else {
      print("You have not taken image");
    }
  }

  // Image picker
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    title: new Text('Gallery'),
                    onTap: () => {
                          imageSelector(context, "gallery"),
                          Navigator.pop(context),
                        }),
                new ListTile(
                  title: new Text('Camera'),
                  onTap: () => {
                    imageSelector(context, "camera"),
                    Navigator.pop(context)
                  },
                ),
              ],
            ),
          );
        });
  }
}
