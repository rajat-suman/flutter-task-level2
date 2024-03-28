import '../models/chooselang_item_model.dart';
import '../controller/chooselang_controller.dart';
import 'package:flutter/material.dart';
import 'package:app_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ChooselangItemWidget extends StatelessWidget {
  ChooselangItemWidget(
    this.chooselangItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChooselangItemModel chooselangItemModelObj;

  var controller = Get.find<ChooselangController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        chooselangItemModelObj.results!.value,
        style: CustomTextStyles.titleMediumBlack900,
      ),
    );
  }
}
