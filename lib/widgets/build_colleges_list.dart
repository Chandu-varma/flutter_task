import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/hom_two_screen/hom_two_screen.dart';
import 'package:flutter_task/presentation/home_page/widgets/topcollegeslist_item_widget.dart';
import 'package:flutter/material.dart';

class BuildCollegesList extends StatelessWidget {
  const BuildCollegesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 37.w,
          bottom: 95.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return TopcollegeslistItemWidget(
              title: 'No Title..🙈',
              description: 'Man',
              callback: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return HomTwoScreen();
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
