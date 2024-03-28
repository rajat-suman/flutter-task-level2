import 'package:app_s_application2/core/app_export.dart';
import 'package:app_s_application2/core/utils/validation_functions.dart';
import 'package:app_s_application2/widgets/custom_elevated_button.dart';
import 'package:app_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/getstarted_controller.dart';

// ignore_for_file: must_be_immutable
class GetstartedScreen extends GetWidget<GetstartedController> {
  GetstartedScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 45.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 138.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_get_started".tr,
                                            style:
                                                theme.textTheme.displaySmall)),
                                    SizedBox(height: 9.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: 315.h,
                                            margin:
                                                EdgeInsets.only(right: 42.h),
                                            child: Text(
                                                "msg_create_an_account".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(height: 1.45)))),
                                    SizedBox(height: 38.v),
                                    _buildName(),
                                    SizedBox(height: 16.v),
                                    _buildEmail(),
                                    SizedBox(height: 16.v),
                                    _buildPassword(),
                                    SizedBox(height: 40.v),
                                    _buildGetStarted(),
                                    SizedBox(height: 39.v),
                                    _buildLineEightyOne(),
                                    SizedBox(height: 39.v),
                                    _buildContinueWithApple(),
                                    SizedBox(height: 16.v),
                                    _buildFive(),
                                    SizedBox(height: 16.v),
                                    _buildFour()
                                  ]))))
                    ])))));
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(leadingWidth: 26.h, actions: [
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
                            color: theme.colorScheme.primary, width: 2.h)))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(5.h, 15.v, 5.h, 12.v),
                    child:
                        Text("lbl_1_3".tr, style: theme.textTheme.labelLarge)))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildName() {
    return CustomFloatingTextField(
        controller: controller.nameController,
        labelText: "lbl_name".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomFloatingTextField(
        controller: controller.emailController,
        labelText: "lbl_e_mail".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "lbl_e_mail".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomFloatingTextField(
        controller: controller.passwordController,
        labelText: "lbl_password".tr,
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: controller.isShowPassword.value,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgPheyeclosedlight,
                    height: 19.adaptSize,
                    width: 19.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        }));
  }

  /// Section Widget
  Widget _buildGetStarted() {
    return CustomElevatedButton(
        text: "lbl_get_started".tr,
        onPressed: () {
          onTapGetStarted();
        });
  }

  /// Section Widget
  Widget _buildLineEightyOne() {
    return SizedBox(
        height: 21.v,
        width: 358.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 358.h, child: Divider(color: appTheme.gray60001))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 21.v,
                  width: 41.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 20.v,
                            width: 41.h,
                            decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1)))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("lbl_or".tr,
                            style: CustomTextStyles.titleMediumOnPrimary))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildContinueWithApple() {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcbaselineapple,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 1.v),
              child: Text("msg_continue_with_apple".tr,
                  style: theme.textTheme.bodyLarge)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              width: 6.h,
              margin: EdgeInsets.symmetric(vertical: 5.v))
        ]));
  }

  /// Section Widget
  Widget _buildFive() {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBiGoogle,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 1.v),
              child: Text("msg_continue_with_google".tr,
                  style: theme.textTheme.bodyLarge)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              width: 6.h,
              margin: EdgeInsets.symmetric(vertical: 5.v))
        ]));
  }

  /// Section Widget
  Widget _buildFour() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 16.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRiFacebookFill,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Text("msg_continue_with_facebook".tr,
                  style: theme.textTheme.bodyLarge)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              width: 6.h,
              margin: EdgeInsets.only(top: 6.v, right: 3.h, bottom: 6.v))
        ]));
  }

  /// Navigates to the completeprofileScreen when the action is triggered.
  onTapGetStarted() {
    if (controller.nameController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } else if (controller.emailController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter email",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } else if (controller.passwordController.text.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.orangeAccent,
          fontSize: 16.0.h);
    } else {
      Map<String, String> map = Map();
      map['firstName'] = controller.nameController.text;
      map['email'] = controller.emailController.text;
      map['password'] = controller.passwordController.text;
      controller.apiClient.registerUser(map)!.then((value) =>
          {Get.toNamed(AppRoutes.completeprofileScreen, arguments: {'userId':value.id})});
    }
  }
}
