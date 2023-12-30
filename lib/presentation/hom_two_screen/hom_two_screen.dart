import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/home_page/home_page.dart';
import 'package:flutter_task/widgets/custom_bottom_bar.dart';
import 'package:flutter_task/widgets/custom_icon_button.dart';
import 'package:flutter_task/widgets/custom_radio_button.dart';
import 'package:flutter_task/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

import '../../widgets/build_designation_widget.dart';

class HomTwoScreen extends StatelessWidget {
  HomTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  String radioGroup = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          height: 850.h,
          child: buildBottomSheet(context),
        ),
      ),
    );
  }

  Widget _buildFindYourOwnWay(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 27.h,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
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
      ),
    );
  }

  Widget _buildFrameSeven(BuildContext context) {
    return SizedBox(
      height: 158.h,
      width: 355.w,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 158.h,
              width: 354.w,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: Assets.imgRectangle141,
                    height: 158.h,
                    width: 354.w,
                    radius: BorderRadius.circular(
                      20.w,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 18.w,
                        top: 22.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3.w),
                            child: Text(
                              "Top Colleges",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            width: 220.w,
                            child: Text(
                              "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style:
                                  CustomTextStyles.labelLargeOnPrimary.copyWith(
                                height: 1.46,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 7.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "+126",
                      style: CustomTextStyles.labelLargeExtraBold,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "Colleges",
                      style: CustomTextStyles.labelMediumGray600,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrameEight(BuildContext context) {
    return SizedBox(
      height: 158.h,
      width: 354.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: Assets.imgRectangle142,
            height: 158.h,
            width: 354.w,
            radius: BorderRadius.circular(
              20.w,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 3.w,
                bottom: 8.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Schools",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 7.h),
                  SizedBox(
                    width: 204.w,
                    child: Text(
                      "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                        height: 1.46,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "+106",
                            style: CustomTextStyles.labelLargeExtraBold,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Schools",
                            style: CustomTextStyles.labelMediumGray600,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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

  Widget _buildFrameNine(BuildContext context) {
    return SizedBox(
      height: 158.h,
      width: 354.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: Assets.imgRectangle143,
            height: 158.h,
            width: 354.w,
            radius: BorderRadius.circular(
              20.w,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.w,
                right: 15.w,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exams",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 9.h),
                  SizedBox(
                    width: 199.w,
                    child: Text(
                      "Find an end to end information about the exams that are happening in India",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                        height: 1.46,
                      ),
                    ),
                  ),
                  SizedBox(height: 54.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "+16",
                            style: CustomTextStyles.labelLargeExtraBold,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Exams",
                            style: CustomTextStyles.labelMediumGray600,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 38.w,
        vertical: 32.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 7.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sort by",
                  style: CustomTextStyles.titleMediumExtraBold,
                ),
                CustomImageView(
                  imagePath: Assets.imgClose,
                  height: 16.w,
                  width: 16.w,
                  margin: EdgeInsets.only(bottom: 4.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.h),
          Divider(
            color: appTheme.black900.withOpacity(0.2),
          ),
          SizedBox(height: 46.h),
          BuildDesignationWidget(
            imgPath: Assets.imgEducation,
            callback: () {},
            label: "Bachelor of Technology",
          ),
          SizedBox(height: 24.h),
          BuildDesignationWidget(
            imgPath: Assets.imgSketch,
            callback: () {},
            label: "Bachelor of Architecture",
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.only(
              left: 1.w,
              right: 7.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 115.w,
                  margin: EdgeInsets.only(top: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: Assets.imgPharmacy,
                        height: 20.w,
                        width: 20.w,
                        margin: EdgeInsets.only(bottom: 2.h),
                      ),
                      Text(
                        "Pharmacy",
                        style: CustomTextStyles.titleMediumSemiBold18,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 21.w,
                  width: 21.w,
                  margin: EdgeInsets.only(bottom: 2.h),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      10.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(
              left: 1.w,
              right: 7.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 69.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: Assets.imgBalance,
                        height: 20.w,
                        width: 20.w,
                        margin: EdgeInsets.only(bottom: 1.h),
                      ),
                      Text(
                        "Law",
                        style: CustomTextStyles.titleMediumSemiBold18,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 21.w,
                  width: 21.w,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      10.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(
              left: 1.w,
              right: 7.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: Assets.imgManagement,
                  height: 20.w,
                  width: 20.w,
                  margin: EdgeInsets.only(
                    top: 1.h,
                    bottom: 3.h,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: CustomRadioButton(
                      width: 308.w,
                      text: "Management",
                      value: "Management",
                      groupValue: radioGroup,
                      isRightCheck: true,
                      onChange: (value) {
                        radioGroup = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
