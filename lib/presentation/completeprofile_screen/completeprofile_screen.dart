import 'package:app_s_application2/core/app_export.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:app_s_application2/widgets/custom_elevated_button.dart';
import 'package:app_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'controller/completeprofile_controller.dart';

class CompleteprofileScreen extends GetWidget<CompleteprofileController> {
   CompleteprofileScreen({Key? key}) : super(key: key);
  dynamic argumentData = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_complete_profile".tr,
                                  style: theme.textTheme.displaySmall),
                              SizedBox(height: 7.v),
                              Container(
                                  width: 346.h,
                                  margin: EdgeInsets.only(right: 11.h),
                                  child: Text("msg_you_cannot_book".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium!
                                          .copyWith(height: 1.35))),
                              SizedBox(height: 33.v),
                              Divider(),
                              SizedBox(height: 24.v),
                              _buildFrame(),
                              SizedBox(height: 22.v),
                              Divider(indent: 3.h),
                              SizedBox(height: 23.v),
                              _buildChooseYourStudy(),
                              SizedBox(height: 16.v),
                              _buildNameOfUniversity(),
                              SizedBox(height: 16.v),
                              _buildChooseSemester(),
                              SizedBox(height: 16.v),
                              _buildChooseLanguage(),
                              SizedBox(height: 31.v),
                              _buildNext()
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
                        padding: EdgeInsets.fromLTRB(5.h, 15.v, 5.h, 12.v),
                        child: Text("lbl_2_3".tr,
                            style: theme.textTheme.labelLarge)))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_about_me_optional".tr,
                style: CustomTextStyles.bodyMediumOnPrimary),
            SizedBox(height: 10.v),
            Text("msg_tell_people_something".tr,
                style: CustomTextStyles.bodyMedium13)
          ]),
          Padding(
              padding: EdgeInsets.only(top: 11.v, bottom: 15.v),
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.aboutmeScreen,
                  );
                },
                child: Text(
                  "lbl_edit".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ))
        ]);
  }

  /// Section Widget
  Widget _buildChooseYourStudy() {
    return CustomFloatingTextField(
        controller: controller.chooseYourStudyController,
        labelText: "lbl_study_branch".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "lbl_study_branch".tr,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown, height: 7.v)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildNameOfUniversity() {
    return CustomFloatingTextField(
        controller: controller.nameOfUniversityController,
        labelText: "lbl_univeristy".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "lbl_univeristy".tr);
  }

  /// Section Widget
  Widget _buildChooseSemester() {
    return CustomFloatingTextField(
        controller: controller.chooseSemesterController,
        labelText: "lbl_semester".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "lbl_semester".tr,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown, height: 7.v)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildChooseLanguage() {
    return CustomFloatingTextField(
        onTapField: () {
          Get.toNamed(
            AppRoutes.chooselangScreen,
          );
        },
        readOnly: true,
        controller: controller.chooseLanguageController,
        labelText: "lbl_language".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        autofocus: false,
        hintText: "lbl_language".tr,
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown, height: 7.v)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v));
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      onPressed: () {
        onTapNext();
      },
    );
  }

  onTapNext() {
    if (controller.chooseYourStudyController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter Study Branch",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } else if (controller.nameOfUniversityController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter University",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } else if (controller.chooseSemesterController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter Semester",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } /*else if (controller.chooseLanguageController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please select language",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } */else {
      Map<String, String> map = Map();
      map['studyBranch'] = controller.chooseYourStudyController.text;
      map['university'] = controller.nameOfUniversityController.text;
      map['semester'] = controller.chooseSemesterController.text;
      map['language'] = controller.chooseLanguageController.text;

      controller.apiClient.updateUser(argumentData['userId'], map)!.then((value) => {
            Get.toNamed(
              AppRoutes.profilepicScreen,
              arguments: {'userId':argumentData['userId']}
            )
          });
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
