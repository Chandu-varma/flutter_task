import '../home_five_page/widgets/homefive_item_widget.dart';
import 'dart:async';
import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/widgets/custom_elevated_button.dart';
import 'package:flutter_task/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class StudentReviewWidget extends StatefulWidget {
  const StudentReviewWidget({Key? key})
      : super(
          key: key,
        );

  @override
  StudentReviewWidgetState createState() => StudentReviewWidgetState();
}

class StudentReviewWidgetState extends State<StudentReviewWidget>
    with AutomaticKeepAliveClientMixin<StudentReviewWidget> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          SizedBox(height: 29.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.w),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Text(
                      "Student Review",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                SizedBox(height: 14.h),
                _buildHomeFive(context),
                SizedBox(height: 7.h),
                _buildFortyFour(context),
                SizedBox(height: 17.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeFive(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 3.w),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 18.w,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return HomefiveItemWidget();
        },
      ),
    );
  }

  Widget _buildFortyFour(BuildContext context) {
    return SizedBox(
      height: 134.h,
      width: 368.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: Assets.imgPolygon1,
            height: 21.w,
            width: 21.w,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 17.w),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 8.h,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: Text(
                      "Arun sai",
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 296.w,
                    margin: EdgeInsets.only(right: 42.w),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeBluegray400.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
