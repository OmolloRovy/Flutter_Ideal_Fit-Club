import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_outlined_button.dart';

class LmBasicPlanScreen extends StatelessWidget {
  const LmBasicPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 430.h,
                padding: EdgeInsets.symmetric(horizontal: 38.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 92.v,
                          width: 153.h,
                          margin: EdgeInsets.only(left: 81.h)),
                      GestureDetector(
                          onTap: () {
                            onTapNinetyFive(context);
                          },
                          child: Container(
                              width: 315.h,
                              margin: EdgeInsets.only(right: 39.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 18.v),
                              decoration: AppDecoration.outlineErrorContainer1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  width: 285.h,
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: Text(
                                      "Access to gym equipment will be granted unto you  This will enable you to access the gym locker room.  You will also be able to access basic group classes  The Basic Plan is ideal for beginners or those who prefer to work out independently. It’s also a great choice for those who enjoy group fitness classes.  This plan is affordable, convenient, and flexible.",
                                      maxLines: 18,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      style: CustomTextStyles.titleMedium17)))),
                      SizedBox(height: 33.v),
                      CustomOutlinedButton(
                          text: "Plans",
                          margin: EdgeInsets.only(right: 39.h),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 23.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowup,
                                  height: 40.v,
                                  width: 24.h)),
                          onPressed: () {
                            onTapPlans(context);
                          }),
                      SizedBox(height: 8.v)
                    ]))));
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapNinetyFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapPlans(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }
}
