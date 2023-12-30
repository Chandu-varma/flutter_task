import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/home_five_page/student_review_widget.dart';
import 'package:flutter_task/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AboutCollegeTab extends StatefulWidget {
  const AboutCollegeTab({Key? key}) : super(key: key);

  @override
  AboutCollegeTabState createState() => AboutCollegeTabState();
}

class AboutCollegeTabState extends State<AboutCollegeTab>
    with AutomaticKeepAliveClientMixin<AboutCollegeTab> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnPrimary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 28.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 354.w,
                      margin: EdgeInsets.only(right: 12.w),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    SizedBox(height: 27.h),
                    Text(
                      "Location",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      height: 196.h,
                      width: 367.w,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: Assets.imgBackground,
                            height: 196.h,
                            width: 365.w,
                            radius: BorderRadius.circular(
                              20.w,
                            ),
                            alignment: Alignment.center,
                          ),
                          // StudentReviewWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            StudentReviewWidget(),
          ],
        ),
      ),
    );
  }
}
