import '../programs_screen/widgets/programlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/app_bar/appbar_leading_image.dart';
import 'package:ideal_fit_club/widgets/app_bar/appbar_title_image.dart';
import 'package:ideal_fit_club/widgets/app_bar/custom_app_bar.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 408.h,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Column(children: [
                  Text("Programs", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 75.v),
                  _buildProgramList(context),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 270.h,
                          child: Text("",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineMediumExtraBold)))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 86.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgHome,
            margin: EdgeInsets.only(left: 46.h, top: 6.v, bottom: 46.v),
            onTap: () {
              onTapHome(context);
            }),
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgLogo1));
  }

  /// Section Widget
  Widget _buildProgramList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 42.h, right: 46.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 14.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ProgramlistItemWidget();
                })));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
