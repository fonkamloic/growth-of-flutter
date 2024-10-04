import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';
import 'package:introduction_to_flutter/widgets/widgets.dart';

class FlutterToolsSlide extends FlutterDeckSlideWidget {
  const FlutterToolsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-tools',
            steps: 10,
            header: FlutterDeckHeaderConfiguration(title: 'Flutter CTO Report 2024'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      backgroundBuilder: (context) => const MeshBackground(
        imagePath: 'assets/images/cto/cto-0.png',
      ),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
               items: const [
                  '1- Very good venture engineering guide',
                  '2- Code Push (shorebird)',
                  '3- Jaspr',
                  '4- widgetbook',
                  '5- Project IDX + Google Codelabs',
                  '6- Game Engine (Flame or Rive)',
                  '7- patrol testing tool',
                  '8- Static shock https://staticshock.io/quickstart/',
                  '9- GitGliff',
                ],
      ),
      rightBuilder: (context) => AutoSwipeCarousel(
        duration: Duration(seconds: 5),
        cardColor: Colors.white,
        children: [
          for (int i = 1; i <= 9; i++)
            _CaseStudy(
              imagePath: 'assets/images/tools/$i.png',
              title: 'Case Study ${i + 1}',
            )
        ],
      ),
    );
  }
}

class _CaseStudy extends StatelessWidget {
  const _CaseStudy({
    required this.imagePath,
    required this.title,
  });

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 16),
          // Text(
          //   title,
          //   style: FlutterDeckTheme.of(context).textTheme.title.copyWith(
          //         color: theme.brightness == Brightness.dark
          //             ? colorScheme.background
          //             : colorScheme.onBackground,
          //       ),
          //   textAlign: TextAlign.center,
          // ),
        ],
      ),
    );
  }
}
