import '../home_seven_page/widgets/sliderimages_item_widget.dart';
import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/widgets/custom_elevated_button.dart';
import 'package:flutter_task/widgets/custom_pin_code_text_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomeSevenPage extends StatefulWidget {
  const HomeSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeSevenPageState createState() => HomeSevenPageState();
}

class HomeSevenPageState extends State<HomeSevenPage>
    with AutomaticKeepAliveClientMixin<HomeSevenPage> {
  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 32.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 63.w,
                        ),
                        child: CustomPinCodeTextField(
                          context: context,
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(height: 29.h),
                      _buildSliderImages(context),
                      SizedBox(height: 29.h),
                      Container(
                        height: 8.h,
                        margin: EdgeInsets.only(left: 143.w),
                        child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 5,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: appTheme.gray400,
                            dotHeight: 8.h,
                            dotWidth: 8.w,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      _buildLoginSection(context),
                      SizedBox(height: 29.h),
                      _buildFacilitiesSection(context),
                      SizedBox(height: 97.h),
                      CustomElevatedButton(
                        text: "Apply Now",
                        margin: EdgeInsets.only(right: 30.w),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliderImages(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 137.h,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return SliderimagesItemWidget();
      },
    );
  }

  Widget _buildLoginSection(BuildContext context) {
    return Container(
      height: 188.h,
      width: 362.w,
      margin: EdgeInsets.only(left: 3.w),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 7.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GHJK Engineering Hostel",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 13.h),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: Assets.imgLocation2,
                        height: 18.w,
                        width: 18.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.w,
                          top: 2.h,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur ",
                          style: CustomTextStyles.labelLargeErrorContainer,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.h),
                  SizedBox(
                    width: 354.w,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                ],
              ),
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
            buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryExtraBold,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }

  Widget _buildFacilitiesSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Facilities",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 13.h),
          Row(
            children: [
              CustomImageView(
                imagePath: Assets.imgUniversity1,
                height: 26.w,
                width: 26.w,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.w,
                  top: 6.h,
                  bottom: 2.h,
                ),
                child: Text(
                  "College in 400mtrs",
                  style: CustomTextStyles.titleSmallErrorContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              CustomImageView(
                imagePath: Assets.imgBath11,
                height: 26.w,
                width: 26.w,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.w,
                  top: 4.h,
                  bottom: 4.h,
                ),
                child: Text(
                  "Bathrooms : 2",
                  style: CustomTextStyles.titleSmallErrorContainer,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
