import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/home_five_page/student_review_widget.dart';
import 'package:flutter_task/presentation/home_seven_page/home_seven_page.dart';
import 'package:flutter/material.dart';

class HomeFiveTabContainerScreen extends StatefulWidget {
  const HomeFiveTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeFiveTabContainerScreenState createState() =>
      HomeFiveTabContainerScreenState();
}

class HomeFiveTabContainerScreenState extends State<HomeFiveTabContainerScreen>
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildOneSection(context),
              SizedBox(height: 8.h),
              _buildTabview(context),
              SizedBox(
                height: 787.h,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    StudentReviewWidget(),
                    HomeSevenPage(),
                    HomeSevenPage(),
                    HomeSevenPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOneSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 10.h,
      ),
      decoration: AppDecoration.outlineBlack9003,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 37.h),
          Text(
            "GHJK Engineering college",
            style: CustomTextStyles.titleLargeBold,
          ),
        ],
      ),
    );
  }

  Widget _buildTabview(BuildContext context) {
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
}
