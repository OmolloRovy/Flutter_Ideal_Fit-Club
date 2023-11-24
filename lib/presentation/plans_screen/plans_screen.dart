import '../plans_screen/widgets/plans_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/app_bar/appbar_leading_image.dart';
import 'package:ideal_fit_club/widgets/app_bar/appbar_title_image.dart';
import 'package:ideal_fit_club/widgets/app_bar/custom_app_bar.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.orange800,
            appBar: _buildAppBar(context),
            body: Container(
                width: 430.h,
                padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Plans",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 15.v),
                      _buildPlans(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 88.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgHome,
            margin: EdgeInsets.only(left: 48.h, bottom: 52.v),
            onTap: () {
              onTapHome(context);
            }),
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgLogo1));
  }

  /// Section Widget
  Widget _buildPlans(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 25.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return PlansItemWidget(onTapLearnMoreButton1: () {
                    onTapLearnMoreButton1(context);
                  }, onTapJoinNowButton1: () {
                    onTapJoinNowButton1(context);
                  });
                })));
  }

  /// Navigates to the lmBasicPlanScreen when the action is triggered.
  onTapLearnMoreButton1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lmBasicPlanScreen);
  }

  /// Navigates to the basicPlanScreen when the action is triggered.
  onTapJoinNowButton1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.basicPlanScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
