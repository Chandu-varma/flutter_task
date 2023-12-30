import 'package:flutter_task/presentation/home_page/widgets/build_scaffold.dart';

import '../../widgets/build_colleges_list.dart';
import 'package:flutter_task/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BuildScaffold(
      child: Column(
        children: [
          SizedBox(height: 50.h),
          SizedBox(
            height: 609.h,
            width: 392.w,
            child: BuildCollegesList(),
          ),
        ],
      ),
    );
  }
}
