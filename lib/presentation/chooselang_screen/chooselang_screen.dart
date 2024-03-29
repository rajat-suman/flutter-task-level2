import 'package:app_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:app_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:app_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/chooselang_item_widget.dart';
import 'models/chooselang_item_model.dart';
import 'package:app_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:app_s_application2/core/app_export.dart';
import 'controller/chooselang_controller.dart';

class ChooselangScreen extends GetWidget<ChooselangController> {
  const ChooselangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_germ".tr),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Results",
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildChooseLang()
                ])),
            bottomNavigationBar: _buildSave()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 26.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "msg_choose_languages".tr),
        actions: [
          AppbarSubtitle(
              text: "lbl_save".tr,
              onTap: (){
                onTapSave();
              },
              margin: EdgeInsets.fromLTRB(15.h, 16.v, 15.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildChooseLang() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            // shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 7.v);
            },
            itemCount: controller
                .chooselangModelObj.value.chooselangItemList.value.length,
            itemBuilder: (context, index) {
              ChooselangItemModel model = controller
                  .chooselangModelObj.value.chooselangItemList.value[index];
              return ChooselangItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        onPressed: (){
          onTapSave();
        },
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 56.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }  /// Navigates to the previous screen.
  onTapSave() {
    // controller.chooselangModelObj.value.chooselangItemList.value.map((e) => return e.va)
    Get.back();
  }
}
