import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_outlined_button.dart';

class LmPremiumPlanScreen extends StatelessWidget {
  const LmPremiumPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 430.h,
                padding: EdgeInsets.symmetric(horizontal: 37.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 92.v,
                          width: 153.h,
                          margin: EdgeInsets.only(left: 81.h)),
                      SizedBox(height: 11.v),
                      GestureDetector(
                          onTap: () {
                            onTapNinetySeven(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 41.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 21.v),
                              decoration: AppDecoration.outlineErrorContainer1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 32.v),
                                    SizedBox(
                                        width: 284.h,
                                        child: Text(
                                            "The Premium Plan is ideal for regular gym-goers or those who want a more personalized and varied experience. It’s also a great choice for those who want to improve their fitness level, learn new skills, or try new challenges. Gym Access: Full access to our state-of-the-art gym facilities, including advanced equipment and machines. Group Classes: Access to all group classes, including yoga, spinning, and more. Plus, access to premium classes, such as Pilates, and boxing. Personal Training: Get personalized guidance and coaching from our certified trainers. You can book up to two sessions per month with your preferred trainer. Locker Room: Use of locker room and shower facilities, as well as complimentary towels and toiletries.",
                                            maxLines: 23,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.justify,
                                            style: theme.textTheme.titleMedium))
                                  ]))),
                      SizedBox(height: 33.v),
                      CustomOutlinedButton(
                          text: "Plans",
                          margin: EdgeInsets.only(right: 41.h),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 23.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowup,
                                  height: 40.v,
                                  width: 24.h)),
                          onPressed: () {
                            onTapPlans(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapNinetySeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapPlans(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }
}
