import '../hom_six_page/widgets/fiftyone_item_widget.dart';
import '../hom_six_page/widgets/fiftythree_item_widget.dart';
import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSixPage extends StatefulWidget {
  const HomeSixPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomSixPageState createState() => HomSixPageState();
}

class HomSixPageState extends State<HomeSixPage>
    with AutomaticKeepAliveClientMixin<HomeSixPage> {
  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // width: double.maxFinite,
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          children: [
            SizedBox(height: 27.h),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 32.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: Wrap(
                        runSpacing: 9.h,
                        spacing: 9.w,
                        children:
                            List<Widget>.generate(4, (index) => BuildBedItem()),
                      ),
                    ),
                    SizedBox(height: 29.h),
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 137.h,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1,
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
                        return FiftythreeItemWidget();
                      },
                    ),
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
                    SizedBox(height: 23.h),
                    SizedBox(
                      // height: 154.v,
                      width: 366.w,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 3.w,
                                right: 8.w,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "GHJK Engineering Hostel",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 17.h),
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
                                          style: CustomTextStyles
                                              .labelLargeErrorContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16.h),
                                  SizedBox(
                                    width: 354.w,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere ",
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          theme.textTheme.titleSmall!.copyWith(
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
                            width: 72.w,
                            text: "4.3",
                            margin: EdgeInsets.only(right: 2.w),
                            rightIcon: Container(
                              margin: EdgeInsets.only(left: 5.w),
                              child: CustomImageView(
                                imagePath: Assets.imgClaritystarsolid,
                                height: 16.w,
                                width: 16.w,
                              ),
                            ),
                            buttonTextStyle:
                                CustomTextStyles.labelLargeErrorContainer,
                            alignment: Alignment.topRight,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    )
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
