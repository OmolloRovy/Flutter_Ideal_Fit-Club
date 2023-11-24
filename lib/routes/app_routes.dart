import 'package:flutter/material.dart';
import 'package:ideal_fit_club/presentation/home_screen/home_screen.dart';
import 'package:ideal_fit_club/presentation/programs_screen/programs_screen.dart';
import 'package:ideal_fit_club/presentation/plans_screen/plans_screen.dart';
import 'package:ideal_fit_club/presentation/signin_screen/signin_screen.dart';
import 'package:ideal_fit_club/presentation/signup_screen/signup_screen.dart';
import 'package:ideal_fit_club/presentation/lm_basic_plan_screen/lm_basic_plan_screen.dart';
import 'package:ideal_fit_club/presentation/lm_premium_plan_screen/lm_premium_plan_screen.dart';
import 'package:ideal_fit_club/presentation/lm_premuim_plan_screen/lm_premuim_plan_screen.dart';
import 'package:ideal_fit_club/presentation/lastview_screen/lastview_screen.dart';
import 'package:ideal_fit_club/presentation/basic_plan_screen/basic_plan_screen.dart';
import 'package:ideal_fit_club/presentation/premium_plan_screen/premium_plan_screen.dart';
import 'package:ideal_fit_club/presentation/pro_plan_screen/pro_plan_screen.dart';
import 'package:ideal_fit_club/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String programsScreen = '/programs_screen';

  static const String plansScreen = '/plans_screen';

  static const String signinScreen = '/signin_screen';

  static const String signupScreen = '/signup_screen';

  static const String lmBasicPlanScreen = '/lm_basic_plan_screen';

  static const String lmPremiumPlanScreen = '/lm_premium_plan_screen';

  static const String lmPremuimPlanScreen = '/lm_premuim_plan_screen';

  static const String lastviewScreen = '/lastview_screen';

  static const String basicPlanScreen = '/basic_plan_screen';

  static const String premiumPlanScreen = '/premium_plan_screen';

  static const String proPlanScreen = '/pro_plan_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    programsScreen: (context) => ProgramsScreen(),
    plansScreen: (context) => PlansScreen(),
    signinScreen: (context) => SigninScreen(),
    signupScreen: (context) => SignupScreen(),
    lmBasicPlanScreen: (context) => LmBasicPlanScreen(),
    lmPremiumPlanScreen: (context) => LmPremiumPlanScreen(),
    lmPremuimPlanScreen: (context) => LmPremuimPlanScreen(),
    lastviewScreen: (context) => LastviewScreen(),
    basicPlanScreen: (context) => BasicPlanScreen(),
    premiumPlanScreen: (context) => PremiumPlanScreen(),
    proPlanScreen: (context) => ProPlanScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
