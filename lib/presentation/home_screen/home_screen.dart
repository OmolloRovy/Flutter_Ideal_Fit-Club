import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepOrange600Ea,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(left: 74.h, right: 23.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 166.v,
                                        width: 215.h,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgLogo1,
                                                  height: 119.v,
                                                  width: 215.h,
                                                  alignment:
                                                      Alignment.topCenter),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h),
                                                      child: Text("Home",
                                                          style: CustomTextStyles
                                                              .displaySmall39)))
                                            ])),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 21.h,
                                            top: 6.v,
                                            bottom: 136.v),
                                        onTap: () {
                                          onTapImgArrowRight(context);
                                        })
                                  ]))),
                      SizedBox(height: 15.v),
                      SizedBox(
                          height: 478.v,
                          width: 342.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgHeroImageRemovebgPreview,
                                height: 339.v,
                                width: 239.h,
                                radius: BorderRadius.circular(60.h),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 39.h, top: 52.v)),
                            _buildPlansForYou(context),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                    " best fitness club in town ".toUpperCase(),
                                    style:
                                        CustomTextStyles.titleLargeOnPrimary)),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                    width: 319.h,
                                    child: Text(
                                        "SHAPE YOUR\nIDEAL BODY".toUpperCase(),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.displayMedium)))
                          ])),
                      SizedBox(height: 11.v),
                      _buildExploreUs(context),
                      SizedBox(height: 1.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildPlansForYou(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder33),
            child: Container(
                height: 78.v,
                width: 339.h,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup168),
                        fit: BoxFit.cover)),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text("nn".toUpperCase(),
                              style:
                                  CustomTextStyles.titleLargeErrorContainer))),
                  CustomElevatedButton(
                      height: 33.v,
                      width: 207.h,
                      text: "PLANS FOR YOU".toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      onPressed: () {
                        onTapPLANSFORYOU(context);
                      },
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  /// Section Widget
  Widget _buildExploreUs(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomElevatedButton(
              height: 54.v,
              width: 136.h,
              text: "JOIN US".toUpperCase(),
              buttonStyle: CustomButtonStyles.fillGray,
              onPressed: () {
                onTapJOINUS(context);
              }),
          CustomElevatedButton(
              height: 54.v,
              width: 162.h,
              text: "EXPLORE US".toUpperCase(),
              buttonStyle: CustomButtonStyles.fillGrayTL17,
              onPressed: () {
                onTapEXPLOREUS(context);
              })
        ]));
  }

  /// Navigates to the lastviewScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lastviewScreen);
  }

  /// Navigates to the plansScreen when the action is triggered.
  onTapPLANSFORYOU(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.plansScreen);
  }

  /// Navigates to the signinScreen when the action is triggered.
  onTapJOINUS(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signinScreen);
  }

  /// Navigates to the programsScreen when the action is triggered.
  onTapEXPLOREUS(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.programsScreen);
  }
}
