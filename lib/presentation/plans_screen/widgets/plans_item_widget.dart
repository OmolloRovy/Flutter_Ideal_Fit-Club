import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';
import 'package:ideal_fit_club/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class PlansItemWidget extends StatelessWidget {
  PlansItemWidget({
    Key? key,
    this.onTapLearnMoreButton1,
    this.onTapJoinNowButton1,
  }) : super(
          key: key,
        );

  VoidCallback? onTapLearnMoreButton1;

  VoidCallback? onTapJoinNowButton1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 173.v,
      width: 318.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 44.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 64.h),
                      child: Text(
                        "KSH 3,500".toUpperCase(),
                        style: CustomTextStyles.headlineMediumErrorContainer27,
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          height: 54.v,
                          width: 140.h,
                          text: "LEARN MORE".toUpperCase(),
                          onPressed: () {
                            onTapLearnMoreButton1!.call();
                          },
                        ),
                        CustomElevatedButton(
                          height: 54.v,
                          width: 100.h,
                          text: "JOIN NOW".toUpperCase(),
                          onPressed: () {
                            onTapJoinNowButton1!.call();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                right: 62.h,
              ),
              child: Text(
                "BASIC PLAN".toUpperCase(),
                style: CustomTextStyles.headlineMedium27,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDumbellRemovebgPreview,
            height: 57.v,
            width: 60.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 19.h),
          ),
        ],
      ),
    );
  }
}
