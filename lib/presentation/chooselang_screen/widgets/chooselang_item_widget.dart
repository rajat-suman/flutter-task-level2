import 'package:app_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

import '../controller/chooselang_controller.dart';
import '../models/chooselang_item_model.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() => InkWell(
            onTap: (){
              chooselangItemModelObj.results?.value.isSelected?.value = !(chooselangItemModelObj.results?.value.isSelected?.value??false);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  chooselangItemModelObj.results?.value.lang?.value ?? "",
                  style: TextStyle(fontSize: 14.fSize, color: Colors.black),
                ),
                chooselangItemModelObj.results?.value.isSelected?.value == true ?
                Container(
                  height: 24.h,
                  width: 24.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.approved, height: 7.v),
                )
                :
                Container(
                  height: 24.h,
                  width: 24.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.unchecked, height: 7.v),
                )
                ,
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Divider()
      ],
    );
  }
}
