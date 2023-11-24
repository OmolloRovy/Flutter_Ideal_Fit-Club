import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_elevated_button.dart';
import 'package:ideal_fit_club/widgets/custom_outlined_button.dart';
import 'package:ideal_fit_club/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 54.h, vertical: 37.v),
                    child: Column(children: [
                      SizedBox(height: 35.v),
                      SizedBox(
                          height: 135.v,
                          width: 153.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLogo1,
                                    height: 92.v,
                                    width: 153.h,
                                    alignment: Alignment.topCenter),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("JOIN US",
                                        style: theme.textTheme.displaySmall))
                              ])),
                      SizedBox(height: 89.v),
                      _buildEmail(context),
                      SizedBox(height: 35.v),
                      _buildPassword(context),
                      SizedBox(height: 31.v),
                      _buildLogin(context),
                      SizedBox(height: 38.v),
                      Text("Forgot Password",
                          style: CustomTextStyles.headlineMediumErrorContainer
                              .copyWith(decoration: TextDecoration.underline)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(right: 2.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 14.v, bottom: 16.v),
                                    child: SizedBox(
                                        width: 110.h, child: Divider())),
                                Text("OR",
                                    style: CustomTextStyles
                                        .headlineMediumErrorContainer),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 14.v, bottom: 16.v),
                                    child: SizedBox(
                                        width: 110.h, child: Divider()))
                              ])),
                      SizedBox(height: 12.v),
                      _buildSignUp(context),
                      SizedBox(height: 30.v),
                      _buildHome(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 6.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email Address",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                padding: EdgeInsets.fromLTRB(13.h, 11.v, 17.h, 20.v),
                margin: EdgeInsets.only(right: 18.h),
                decoration: BoxDecoration(
                    color: appTheme.deepOrange600Ea,
                    borderRadius: BorderRadius.circular(10.h)),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 27.v,
                    width: 29.h)),
            prefixConstraints: BoxConstraints(maxHeight: 58.v)));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 6.h),
        child: CustomTextFormField(
            controller: passwordController,
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
            obscureText: true));
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        margin: EdgeInsets.only(left: 1.h, right: 6.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightGray400,
                height: 24.v,
                width: 40.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.headlineMediumGray50001);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 7.h),
        rightIcon: Container(
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightOrange800,
                height: 24.v,
                width: 40.h)),
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return CustomOutlinedButton(
        text: "Home",
        margin: EdgeInsets.only(left: 7.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowup,
                height: 40.v,
                width: 24.h)),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgHomeErrorcontainer,
                height: 40.adaptSize,
                width: 40.adaptSize)),
        onPressed: () {
          onTapHome(context);
        });
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
