import 'package:flutter/material.dart';
import 'package:ideal_fit_club/core/app_export.dart';

// ignore: must_be_immutable
class ProgramlistItemWidget extends StatelessWidget {
  const ProgramlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 82.v,
            width: 271.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "STRENGTH TRANING",
                    style:
                        CustomTextStyles.headlineMediumErrorContainerExtraBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDumbellRemovebgPreview,
                  height: 57.v,
                  width: 60.h,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          SizedBox(
            width: 289.h,
            child: Text(
              "This program improves your strength through training.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: CustomTextStyles.titleLargeErrorContainerMedium,
            ),
          ),
        ],
      ),
    );
  }
}
