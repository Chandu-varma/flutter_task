import 'package:flutter_task/presentation/home_page/widgets/home_header.dart';

import '../home_four_page.dart';
import 'widgets/build_college_widget.dart';
import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/home_page/home_page.dart';
import 'package:flutter_task/widgets/custom_bottom_bar.dart';
import 'package:flutter_task/widgets/custom_icon_button.dart';
import 'package:flutter_task/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomThreeScreen extends StatelessWidget {
  HomThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              BuildHomeHeader(),
              SizedBox(height: 26.h),
              _buildNinetyRow(context),
              SizedBox(height: 26.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 31.w,
                    right: 28.w,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.5.h),
                        child: SizedBox(
                          width: 318.w,
                          child: Divider(
                            height: 2.h,
                            thickness: 2.h,
                            color: appTheme.black900.withOpacity(0.2),
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return BuildCollegeWidget(
                        call: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeFourScreen(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNinetyRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 18.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 266.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 133.w,
                      margin: EdgeInsets.only(bottom: 3.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.w,
                        vertical: 6.h,
                      ),
                      decoration: AppDecoration.outlineBlack9001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "MVSH Engineering college ",
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                    ),
                    Container(
                      width: 133.w,
                      margin: EdgeInsets.only(top: 3.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.w,
                        vertical: 6.h,
                      ),
                      decoration: AppDecoration.outlineBlack9001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "MVSH Engineering college ",
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 133.w,
                margin: EdgeInsets.only(
                  left: 18.w,
                  bottom: 3.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.w,
                  vertical: 6.h,
                ),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "MVSH Engineering college ",
                  style: CustomTextStyles.labelMediumMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
