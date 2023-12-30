import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/hom_six_page/hom_six_page.dart';
import 'package:flutter_task/presentation/about_college_tab.dart';
import 'package:flutter_task/presentation/home_five_page/student_review_widget.dart';
import 'package:flutter_task/widgets/custom_elevated_button.dart';
import 'package:flutter_task/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomeFourScreen extends StatefulWidget {
  const HomeFourScreen({Key? key});

  @override
  HomeFourScreenState createState() => HomeFourScreenState();
}

class HomeFourScreenState extends State<HomeFourScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // width: double.maxFinite,
          child: Column(
            children: [
              buildHomeStack(context),
              SizedBox(height: 19.h),
              buildEngineeringRow(context),
              SizedBox(height: 25.h),
              buildTabview(context),
              buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHomeStack(BuildContext context) {
    return SizedBox(
      height: 271.h,
      // width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: Assets.imgUnsplashE7eqkqkpk8,
            height: 271.h,
            width: 428.w,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 188.h),
              padding: EdgeInsets.symmetric(
                horizontal: 28.w,
                vertical: 20.h,
              ),
              decoration: AppDecoration.outlineBlack9003,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: CustomIconButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      height: 42.w,
                      width: 42.w,
                      padding: EdgeInsets.all(4.w),
                      decoration: IconButtonStyleHelper.fillOnPrimaryTL21,
                      child: CustomImageView(
                        imagePath: Assets.imgBiArrowLeftShort,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.h,
                      right: 1.w,
                    ),
                    child: CustomIconButton(
                      height: 42.w,
                      width: 42.w,
                      padding: EdgeInsets.all(9.w),
                      decoration: IconButtonStyleHelper.fillOnPrimaryTL21,
                      child: CustomImageView(
                        imagePath: Assets.imgGroup27,
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

  Widget buildEngineeringRow(BuildContext context,
      {String collegename = 'college name',
      String discription = 'about college',
      String rating = '4.3'}) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.w,
        right: 24.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  collegename,
                  style: CustomTextStyles.titleLargeBlack900,
                ),
                SizedBox(height: 11.h),
                SizedBox(
                  width: 298.w,
                  child: Text(
                    discription,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeBluegray400.copyWith(
                      height: 1.42,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 35.w,
              top: 10.h,
              bottom: 16.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 9.w,
              vertical: 8.h,
            ),
            decoration: AppDecoration.fillLightGreenA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rating,
                  style: CustomTextStyles.titleMediumOnPrimary,
                ),
                SizedBox(height: 7.h),
                CustomImageView(
                  imagePath: Assets.imgClaritystarsolid,
                  height: 25.w,
                  width: 25.w,
                  margin: EdgeInsets.only(left: 3.w),
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabview(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "About college ",
            ),
          ),
          Tab(
            child: Text(
              "Hostel facility",
            ),
          ),
          Tab(
            child: Text(
              "Q & A",
            ),
          ),
          Tab(
            child: Text(
              "Events",
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 461.h,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomElevatedButton(
          width: 366.w,
          onPressed: () {},
          text: "Apply Now",
          margin: EdgeInsets.only(bottom: 12.h),
          buttonStyle: CustomButtonStyles.fillPrimaryTL10,
          alignment: Alignment.bottomCenter,
        ),
        body: TabBarView(
          controller: tabviewController,
          children: [
            AboutCollegeTab(),
            HomeSixPage(),
            HomeSixPage(),
            HomeSixPage(),
          ],
        ),
      ),
    );
  }
}
