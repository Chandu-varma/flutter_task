import 'package:flutter_task/core/app_export.dart';
import 'package:flutter_task/presentation/home_page/widgets/home_header.dart';
import 'package:flutter_task/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

TextEditingController searchController = TextEditingController();

class BuildScaffold extends StatelessWidget {
  const BuildScaffold({this.child, Key? key}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: CustomBottomBar(),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildHomeHeader(),
                child ?? SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
