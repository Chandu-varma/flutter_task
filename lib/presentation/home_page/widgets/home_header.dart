import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/widgets/custom_icon_button.dart';
import 'package:flutter_task/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'build_scaffold.dart';

class BuildHomeHeader extends StatelessWidget {
  const BuildHomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.w,
        vertical: 26.h,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: Text(
                    "Find your own way",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: Assets.imgFrame10,
                  height: 21.h,
                  width: 17.w,
                  margin: EdgeInsets.only(bottom: 14.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.w),
              child: Text(
                "Search in 600 colleges around!",
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AppCustomSearch(
                  controller: searchController,
                  hintText: "Search for colleges, schools.....",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: CustomIconButton(
                  height: 53.h,
                  width: 55.w,
                  padding: EdgeInsets.all(16.w),
                  decoration: IconButtonStyleHelper.fillOnPrimary,
                  child: CustomImageView(
                    imagePath: Assets.imgWhhVoice,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
