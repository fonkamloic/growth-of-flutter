import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';

class CakeSlideDesc extends FlutterDeckSlideWidget {
  const CakeSlideDesc()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-10y-cake-desc',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
        label: 'Flutter 10th Anniversary',
        imageBuilder: (context) => Image.asset(
              'assets/images/cake.png',
              fit: BoxFit.contain,
            ),
        backgroundBuilder: (context) => const MeshBackground(
              imagePath: 'assets/images/cake.png',

              // Color.fromARGB(255, 235, 235, 194), // Color 1
              // Color.fromARGB(255, 140, 200, 158), // Color 2
              // Color.fromARGB(255, 209, 18, 82), // Color 3
              // Color.fromARGB(255, 235, 179, 39),
            ));
  }
}
