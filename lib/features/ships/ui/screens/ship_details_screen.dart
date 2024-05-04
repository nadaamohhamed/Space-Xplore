import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/link_text.dart';
import 'package:space_app/features/ships/data/models/ship_model.dart';
import 'package:space_app/features/ships/ui/widgets/info_data_with_image.dart';
import 'package:space_app/features/ships/ui/widgets/titile_and_sub_title_info.dart';

class ShipDetailsScreen extends StatelessWidget {
  const ShipDetailsScreen({super.key, required this.singleShipModel});
  final ShipModel singleShipModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Center(
            child: Container(
              height: 440.h,
              width: 330.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorsManager.lightTransparent,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ship Details",
                        style: TextStyles.font20WhiteBold,
                      ),
                      verticalSpace(24.h),
                      const Divider(color: ColorsManager.darkGrey),
                      verticalSpace(12.h),
                      InfoDataWithImage(
                        shipModel: singleShipModel,
                      ),
                      verticalSpace(10.h),
                      TitleAndSubTitle(
                        title: "Home port:",
                        subTitle: singleShipModel.homePort ?? "empty",
                      ),
                      verticalSpace(10.h),
                      TitleAndSubTitle(
                        title: "Year Built:",
                        subTitle: singleShipModel.yearBuilt.toString(),
                      ),
                      verticalSpace(10.h),
                      TitleAndSubTitle(
                        title: "Weight:",
                        subTitle:
                            "${singleShipModel.weightKg?.toString() ?? ''} kg",
                      ),
                      verticalSpace(24.h),
                      if (singleShipModel.link != null)
                        LinkText(
                          linkUrl: singleShipModel.link!,
                          linkName: 'Wikipedia',
                        ),
                      verticalSpace(24.h),
                      const Divider(color: ColorsManager.darkGrey),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
