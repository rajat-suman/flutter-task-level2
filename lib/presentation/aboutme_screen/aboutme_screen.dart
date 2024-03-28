import 'package:app_s_application2/core/app_export.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:app_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:app_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/aboutme_controller.dart';

class AboutmeScreen extends GetWidget<AboutmeController> {
  const AboutmeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 13.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_about_me".tr,
                                      style: CustomTextStyles
                                          .displaySmallOnPrimary)),
                              SizedBox(height: 7.v),
                              Container(
                                  width: 315.h,
                                  margin:
                                      EdgeInsets.only(left: 3.h, right: 45.h),
                                  child: Text("msg_tell_us_in_a_few".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium)),
                              SizedBox(height: 29.v),
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.h, 13.v, 0.h, 120.v),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.h),
                                    border: Border.all(
                                      color: appTheme.gray200,
                                      width: 1,
                                    )),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(
                                          margin: EdgeInsets.only(left: 14.h, top:14.h,),
                                            imagePath: ImageConstant.imgEllipse95,
                                            height: 48.adaptSize,
                                            width: 48.adaptSize),
                                        Padding(
                                          padding:  EdgeInsets.only(left: 10.0.h, top: 14.h),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "MUDr. Amandeep Grewal".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900),
                                                Text(
                                                    "Head of cardiac Surgery".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium13),
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: Padding(
                                          padding:  EdgeInsets.only(left:14.h, right: 14.h),
                                          child: TextFormField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "msg_tell_people_something".tr,
                                                contentPadding: EdgeInsets.only(
                                                  top: 15.v,
                                                  right: 13.h,
                                                  bottom: 0.v,
                                                ),
                                                hintStyle: CustomTextStyles.bodyMediumGray60001
                                              ),
                                              controller: controller
                                                  .tellpeoplesomethingaboutyouController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              maxLines: 10),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(height: 55.v),
                              CustomElevatedButton(
                                  text: "lbl_save".tr,
                                  margin: EdgeInsets.only(left: 6.h),
                                  buttonStyle:
                                      CustomButtonStyles.fillSecondaryContainer,
                                  onPressed: () {
                                    onTapSave();
                                  })
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 26.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 17.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTitle(
              text: "lbl_save".tr,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
            onTap: (){
              onTapSave();
            },
          )
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the profilepicScreen when the action is triggered.
  onTapSave() {
    // Get.toNamed(
    //   AppRoutes.profilepicScreen,
    // );
    onTapArrowLeft();
  }
}
