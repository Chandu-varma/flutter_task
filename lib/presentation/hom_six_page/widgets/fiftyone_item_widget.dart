import 'package:flutter_task/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildBedItem extends StatelessWidget {
  const BuildBedItem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          left: 14.w,
          top: 5.h,
          bottom: 5.h,
          right: 5.h,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "4 ",
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
          ),
        ),
        deleteIcon: CustomImageView(
          color: Colors.black,
          imagePath: Assets.imgBed3,
          height: 20.w,
          width: 20.w,
          margin: EdgeInsets.only(),
        ),
        onDeleted: () {},
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(
            8.w,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
