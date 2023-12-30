import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/about_college_tab.dart';
import 'package:flutter_task/presentation/home_four_page.dart';
import 'package:flutter_task/widgets/custom_elevated_button.dart';
import 'package:flutter_task/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildCollegeWidget extends StatelessWidget {
  const BuildCollegeWidget({this.call, Key? key}) : super(key: key);
  final VoidCallback? call;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        call?.call();
      },
      child: SizedBox(
        height: 245.h,
        width: 362.w,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(right: 8.w),
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 116.h,
                      width: 354.w,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: Assets.imgUnsplashUcr4ypT364,
                            height: 116.h,
                            width: 354.w,
                            radius: BorderRadius.vertical(
                              top: Radius.circular(20.w),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(13.w, 13.h, 9.w, 67.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomIconButton(
                                    height: 36.w,
                                    width: 36.w,
                                    padding: EdgeInsets.all(3.w),
                                    child: CustomImageView(
                                      imagePath:
                                          Assets.imgAntDesignShareAltOutlined,
                                    ),
                                  ),
                                  CustomIconButton(
                                    height: 36.w,
                                    width: 36.w,
                                    padding: EdgeInsets.all(7.w),
                                    child: CustomImageView(
                                      imagePath: Assets.imgGroup27,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.h,
                                bottom: 1.h,
                              ),
                              child: Text(
                                "GHJK1 Engineering college",
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                            ),
                            CustomElevatedButton(
                              height: 22.h,
                              width: 52.w,
                              text: "4.3",
                              rightIcon: Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: CustomImageView(
                                  imagePath: Assets.imgClaritystarsolid,
                                  height: 16.w,
                                  width: 16.w,
                                ),
                              ),
                              buttonTextStyle:
                                  CustomTextStyles.labelLargeOnPrimaryExtraBold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      width: 201.w,
                      margin: EdgeInsets.only(left: 18.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelSmall!.copyWith(
                          height: 1.56,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 18.w),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: Assets.imgLike1,
                            height: 26.w,
                            width: 26.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.w,
                              top: 7.h,
                              bottom: 7.h,
                            ),
                            child: Text(
                              "More than 1000+ students have been placed",
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 11.h),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 102.h,
                width: 116.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 26.w,
                          bottom: 19.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: Assets.imgEye,
                              height: 16.w,
                              width: 16.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5.w,
                                top: 2.h,
                                bottom: 2.h,
                              ),
                              child: Text(
                                "468+",
                                style: CustomTextStyles.labelSmallBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 21.h,
                            width: 77.w,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 5.w,
                                  top: 4.h,
                                ),
                                child: Text(
                                  "Apply Now",
                                  style: CustomTextStyles.labelMediumOnPrimary,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                5.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
