import 'package:flutter_task/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Assets.imgNavSearch,
      activeIcon: Assets.imgNavSearch,
      title: "Search",
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: Assets.imgNavSavedPrimarycontainer,
      activeIcon: Assets.imgNavSavedPrimarycontainer,
      title: "saved",
      type: BottomBarEnum.Saved,
    ),
    BottomMenuModel(
      icon: Assets.imgNavSaved,
      activeIcon: Assets.imgNavSaved,
      title: "saved",
      type: BottomBarEnum.Saved,
    ),
    BottomMenuModel(
      icon: Assets.imgNavAccount,
      activeIcon: Assets.imgNavAccount,
      title: "account",
      type: BottomBarEnum.Account,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.52),
            spreadRadius: 2.w,
            blurRadius: 2.w,
            offset: Offset(
              8,
              8,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.w,
                  width: 24.w,
                  color: theme.colorScheme.primaryContainer,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style:
                        CustomTextStyles.labelMediumPrimaryContainer.copyWith(
                      color: theme.colorScheme.primaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.w,
                  width: 24.w,
                  color: theme.colorScheme.onPrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelMediumOnPrimary.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Search,
  Saved,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
