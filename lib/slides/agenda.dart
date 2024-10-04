import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';

class AgendaSlide extends FlutterDeckSlideWidget {
  const AgendaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/agenda',
               steps: 4,
            header: FlutterDeckHeaderConfiguration(title: 'Agenda'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
        'Flutter Growth: Flutter\'s 10-year journey and impact.',
        'Business: Commercial roadmap for Flutter success.',
        'Community: Global community insights and growth.',
        'Tools: Key tools to enhance Flutter development.',
      ]),
      rightBuilder: (context) => FractionallySizedBox(
        heightFactor: 0.8,
        widthFactor: 0.8,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(32),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
