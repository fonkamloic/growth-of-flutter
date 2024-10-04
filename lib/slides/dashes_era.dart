import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';

class DashesEraSlide extends FlutterDeckSlideWidget {
  const DashesEraSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dashes_era',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
        imageBuilder: (context) => Image.asset(
              'assets/images/dashes_era.png',
              fit: BoxFit.contain,
            ),
        backgroundBuilder: (context) => const MeshBackground(
                           imagePath:     'assets/images/dashes_era.png',
              // Color.fromARGB(255, 116, 236, 240), // Color 1
              // Color.fromARGB(255, 226, 221, 217), // Color 2
              // Color.fromARGB(255, 64, 174, 84), // Color 3
              // Color.fromARGB(255, 70, 71, 73),
            ));
  }
}
