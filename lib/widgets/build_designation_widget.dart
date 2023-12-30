import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/hom_three_screen/hom_three_screen.dart';
import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import 'custom_image_view.dart';

class BuildDesignationWidget extends StatelessWidget {
  const BuildDesignationWidget(
      {this.imgPath, this.label, this.callback, Key? key});

  final String? imgPath;
  final String? label;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: imgPath!,
                  height: 22.w,
                  width: 22.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    label!,
                    style: CustomTextStyles.titleMediumSemiBold18,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              //

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomThreeScreen(),
                ),
              );
            },
            child: Container(
              height: 21.w,
              width: 21.w,
              margin: EdgeInsets.only(bottom: 2.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: Assets.imgPlay,
                    height: 9.w,
                    width: 9.w,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 21.w,
                      width: 21.w,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          10.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
