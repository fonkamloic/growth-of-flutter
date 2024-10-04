import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';

class GenericImageSlide extends FlutterDeckSlideWidget {
  GenericImageSlide(this.imagePath, [this.label])
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: '/${imagePath.split('.').first.split('/').last}',
          ),
        );

  final String imagePath;
  final String? label;

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: label,
      imageBuilder: (context) => Image.asset(
        imagePath,
        fit: BoxFit.contain,
      ),
      backgroundBuilder: (context) => MeshBackground(
        imagePath: imagePath,
      ),
    );
  }
}
