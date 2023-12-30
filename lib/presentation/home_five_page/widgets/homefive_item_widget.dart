import 'package:flutter_task/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomefiveItemWidget extends StatelessWidget {
  const HomefiveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: CustomImageView(
        imagePath: Assets.imgUnsplash71ngixcdtze,
        height: 50.w,
        width: 50.w,
        radius: BorderRadius.circular(
          10.w,
        ),
      ),
    );
  }
}
