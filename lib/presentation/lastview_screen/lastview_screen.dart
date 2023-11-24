import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_outlined_button.dart';

class LastviewScreen extends StatelessWidget {
  const LastviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 430.h,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 43.v,
                          width: 371.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer))),
                  SizedBox(height: 15.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo1,
                      height: 92.v,
                      width: 153.h),
                  SizedBox(height: 18.v),
                  Text("Join Us Now".toUpperCase(),
                      style: CustomTextStyles.headlineMediumPrimaryContainer),
                  SizedBox(height: 28.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgTImage2RemovebgPreview,
                      height: 343.v,
                      width: 297.h),
                  SizedBox(height: 18.v),
                  Container(
                      width: 357.h,
                      margin: EdgeInsets.only(left: 22.h, right: 21.h),
                      child: Text("Lets shape your ideal body".toUpperCase(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.displaySmallPrimaryContainer)),
                  SizedBox(height: 38.v),
                  CustomOutlinedButton(
                      text: "Home",
                      margin: EdgeInsets.only(left: 29.h, right: 56.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 34.v,
                              width: 15.h)),
                      onPressed: () {
                        onTapHome(context);
                      },
                      alignment: Alignment.centerLeft),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
