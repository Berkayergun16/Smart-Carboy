// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/sharedWidgets/app_svg_icon.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:bixos_project/feature/bottom_navigation_bar/domain/entities/bottom_navigation_bar_state.dart';
import 'package:bixos_project/feature/bottom_navigation_bar/view/widgets/public_app_bar.dart';
import 'package:bixos_project/feature/bottom_navigation_bar/view/widgets/public_app_drawer.dart';
import 'package:bixos_project/feature/bottom_navigation_bar/viewmodel/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
      builder: (BuildContext context, BottomNavigationBarProvider bottomNavigationBarProvider, Widget? widget) {
        return Scaffold(
          backgroundColor: bottomNavigationBarProvider.selectedBarState.backgroundColorScaffold(),
          endDrawer: PublicAppDrawer(),
          appBar: PublicAppBar(),
          body: bottomNavigationBarProvider.selectedBarState.buildBody(),
          bottomNavigationBar: SizedBox(
            height: ScreenSize().dynamicHeight(.12),
            child: BottomNavigationBar(
              backgroundColor: AppColors.darkblue,
              onTap: (int index) {
                bottomNavigationBarProvider.routePage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: AppSvgIcon(
                    assetPath: AssetsPath().shopSVG,
                    percent: .03,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: AppSvgIcon(
                    assetPath: AssetsPath().homeSVG,
                    percent: .03,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: AppSvgIcon(
                    assetPath: AssetsPath().settingsSVG,
                    percent: .03,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
