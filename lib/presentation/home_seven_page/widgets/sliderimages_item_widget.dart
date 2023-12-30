import 'package:flutter_task/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderimagesItemWidget extends StatelessWidget {
  const SliderimagesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: Assets.imgUnsplashWqjvwuHzfo,
      height: 137.h,
      width: 154.w,
      radius: BorderRadius.circular(
        10.w,
      ),
      margin: EdgeInsets.only(right: 242.w),
    );
  }
}
