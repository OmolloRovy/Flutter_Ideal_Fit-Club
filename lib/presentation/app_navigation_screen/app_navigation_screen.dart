import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Programs",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.programsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "plans",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.plansScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SignIn",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SignUp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LM_Basic_plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lmBasicPlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LM_Premium_Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lmPremiumPlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LM_Premuim_Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lmPremuimPlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "lastView",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lastviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Basic_Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.basicPlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Premium_Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.premiumPlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pro_Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.proPlanScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
