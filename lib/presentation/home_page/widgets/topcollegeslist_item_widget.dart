import 'package:flutter_task/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopcollegeslistItemWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final VoidCallback? callback;
  const TopcollegeslistItemWidget({
    Key? key,
    this.title = 'Top colleges',
    this.description =
        'Search through the thousands of accereted colleges and university',
    this.callback,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (callback != null) {
          callback!.call();
        }
      },
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
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
                    alignment: Alignment.centerLeft,
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
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Text(
                                  title!,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              SizedBox(
                                width: 202.w,
                                child: Text(
                                  description!,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                  style: CustomTextStyles.labelLargeOnPrimary
                                      .copyWith(
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
        ),
      ),
    );
  }
}
