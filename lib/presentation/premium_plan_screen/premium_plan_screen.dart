import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_elevated_button.dart';
import 'package:ideal_fit_club/widgets/custom_outlined_button.dart';
import 'package:ideal_fit_club/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PremiumPlanScreen extends StatelessWidget {
  PremiumPlanScreen({Key? key}) : super(key: key);

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: 430.h,
                    padding: EdgeInsets.symmetric(horizontal: 57.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo1,
                              height: 92.v,
                              width: 153.h),
                          SizedBox(height: 14.v),
                          Text("PREMIUM  PLAN",
                              style: theme.textTheme.displaySmall),
                          SizedBox(height: 61.v),
                          _buildNameField(context),
                          SizedBox(height: 38.v),
                          _buildEmailField(context),
                          SizedBox(height: 44.v),
                          _buildPasswordField(context),
                          SizedBox(height: 44.v),
                          _buildJoinNowButton(context),
                          SizedBox(height: 80.v),
                          _buildPlansButton(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return CustomTextFormField(
        controller: nameFieldController,
        hintText: "Enter Name",
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        hintText: "Email Address",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            padding: EdgeInsets.fromLTRB(13.h, 11.v, 17.h, 20.v),
            margin: EdgeInsets.only(right: 18.h),
            decoration: BoxDecoration(
                color: appTheme.deepOrange600Ea,
                borderRadius: BorderRadius.circular(10.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame, height: 27.v, width: 29.h)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: passwordFieldController,
        hintText: "password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            padding: EdgeInsets.fromLTRB(18.h, 15.v, 17.h, 19.v),
            margin: EdgeInsets.only(right: 30.h),
            decoration: BoxDecoration(
                color: appTheme.deepOrange600Ea,
                borderRadius: BorderRadius.circular(10.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrameErrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildJoinNowButton(BuildContext context) {
    return CustomElevatedButton(
        text: "JOIN NOW",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 15.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightGray400,
                height: 24.v,
                width: 40.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.headlineMediumGray50001);
  }

  /// Section Widget
  Widget _buildPlansButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Plans",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 23.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowup,
                height: 40.v,
                width: 24.h)),
        onPressed: () {
          onTapPlansButton(context);
        });
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapPlansButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }
}
