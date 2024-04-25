import 'package:flutter/material.dart';
import 'package:space_app/features/rockets/ui/widgets/image_slider_widget.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/details_section.dart';
import 'package:space_app/core/widgets/background_container.dart';
import '../widgets/details_section.dart';
import '../widgets/image_details_section.dart';

class RocketDetailsScreen extends StatelessWidget {
  const RocketDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(title: 'Rocket Details' ,),
    var screenHeight = MediaQuery.of(context).size.height; //TODO::
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: SafeArea(
        child: BackgroundContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: screenHeight / 8,
              ),
              ImageSlider(
                screenHeight: screenHeight,
              ),
              ImageOfDetailsSection(
                  screenHeight: screenHeight, screenWidth: screenWidth),

              DetailsSection(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}
