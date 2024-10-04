import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';

class FlutterEraSlide extends FlutterDeckSlideWidget {
  const FlutterEraSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter_era',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
        imageBuilder: (context) => Image.asset(
              'assets/images/eric_plate.png',
              fit: BoxFit.contain,
            ),
        backgroundBuilder: (context) => const MeshBackground(
                       imagePath:        'assets/images/eric_plate.png',
 
              // Color(0xFFff7e5f), // Color 1
              // Color.fromARGB(255, 226, 221, 217), // Color 2
              // Color.fromARGB(255, 195, 18, 77), // Color 3
              // Color.fromARGB(255, 7, 21, 45),
            ));
  }
}
