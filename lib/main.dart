import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/slides/cake.dart';
import 'package:introduction_to_flutter/slides/cake_desc.dart';
import 'package:introduction_to_flutter/slides/community_roodmap.dart';
import 'package:introduction_to_flutter/slides/dashes_era.dart';
import 'package:introduction_to_flutter/slides/flutter_cto_survey.dart';
import 'package:introduction_to_flutter/slides/flutter_tools.dart';
import 'package:introduction_to_flutter/slides/generic_image_slide.dart';
import 'package:introduction_to_flutter/slides/slides.dart';

void main() {
  runApp(const FlutterDeckExample());
}

class FlutterDeckExample extends StatelessWidget {
  const FlutterDeckExample({super.key});
  final String growth = 'assets/images/growth';
  final String history = 'assets/images/history';
  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(
        footer: FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        transition: FlutterDeckTransition.fade(),
      ),
      slides: [
        IntroSlide(),
        CakeSlide(),
        CakeSlideDesc(),
        GenericImageSlide('$history/first_commit.png'),
        EricPlateSlide(),
        DashesEraSlide(),
        AgendaSlide(),
        GenericImageSlide('$growth/exploring.png'),
        GenericImageSlide('$history/2015.jpeg'),
        GenericImageSlide('$history/frist_beta-feb-2018.png'),
        GenericImageSlide('$history/2018-dec.jpeg'),
        GenericImageSlide('$history/2019-feb.png'),
        GenericImageSlide('$history/2021-mar.png'),
        GenericImageSlide('$history/2022-feb.jpeg'),
        GenericImageSlide('$history/2022-may.png'),
        GenericImageSlide('$history/2023-feb.png'),
        GenericImageSlide('$history/2023-may.jpeg'),
        GenericImageSlide('$growth/building.png'),
        GenericImageSlide('$growth/flutter_10x.png'),
        WhatIsFlutterSlide(),
        ...flutterFoundationalPillarsSlides,
        GenericImageSlide('$growth/business.png'),
        GenericImageSlide('$growth/beer_app.png'),
        GenericImageSlide('$growth/beer_app_flutterbuddies.png'),
        GenericImageSlide('$growth/hamilton.png'),
        GenericImageSlide('$growth/flutter_adopters.png'),
        GenericImageSlide('$growth/flutter_adopters_sav.png'),
        GenericImageSlide('$growth/flutter_built_comp.png'),
        GenericImageSlide('$growth/flutter_server.png'),
        GenericImageSlide('$growth/big_brands.png'),
        GenericImageSlide('$growth/well_established.png'),
        FlutterCommunityRoadmapSlide(),
        FlutterCTOSurveySlide(),
        FlutterToolsSlide(),
        GenericImageSlide('$growth/macros.png'),
        GenericImageSlide('$growth/cpu_screen.png'),
        ThankYouSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Loïc Fonkam',
        description: 'Flutter Evangelist',
        socialHandle: '@FonkamL',
        imagePath: 'assets/images/me.jpeg',
      ),
    );
  }
}
