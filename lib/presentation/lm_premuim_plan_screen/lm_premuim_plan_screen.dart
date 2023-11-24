import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_outlined_button.dart';

class LmPremuimPlanScreen extends StatelessWidget {
  const LmPremuimPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 430.h,
                padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 55.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 92.v,
                          width: 153.h,
                          margin: EdgeInsets.only(left: 80.h)),
                      SizedBox(height: 34.v),
                      CustomOutlinedButton(
                          height: 517.v,
                          text:
                              "The Premium Plan is ideal for regular gym-goers or those who want a more personalized and varied experience. It’s also a great choice for those who want to improve their fitness level, learn new skills, or try new challenges.\r\n\r\nGym Access: Full access to our state-of-the-art gym facilities, including advanced equipment and machines.\r\nGroup Classes: Access to all group classes, including yoga, spinning, and more. Plus, access to premium classes, such as Pilates, and boxing.\r\nPersonal Training: Get personalized guidance and coaching from our certified trainers. You can book up to two sessions per month with your preferred trainer.\r\nLocker Room: Use of locker room and shower facilities, as well as complimentary towels and toiletries.",
                          margin: EdgeInsets.only(right: 33.h),
                          buttonTextStyle: theme.textTheme.titleMedium!,
                          onPressed: () {
                            onTapThePremiumPlanIsIdealFor(context);
                          }),
                      SizedBox(height: 34.v),
                      CustomOutlinedButton(
                          text: "Plans",
                          margin: EdgeInsets.only(right: 33.h),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 23.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowup,
                                  height: 40.v,
                                  width: 24.h)),
                          onPressed: () {
                            onTapPlans(context);
                          }),
                      SizedBox(height: 7.v)
                    ]))));
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapThePremiumPlanIsIdealFor(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapPlans(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }
}
