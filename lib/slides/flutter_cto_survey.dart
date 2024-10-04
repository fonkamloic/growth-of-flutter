import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';
import 'package:introduction_to_flutter/widgets/widgets.dart';

class FlutterCTOSurveySlide extends FlutterDeckSlideWidget {
  const FlutterCTOSurveySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-cto-survey',
            steps: 5,
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
          'Team Size: Most teams have 1-5 mobile developers (60.9%).',
          'Flutter Adoption: 73.6% of companies build Flutter-first apps.',
          'Code Reusability: 89.7% chose Flutter for its code reusability between iOS and Android.',
          'Satisfied Users: 95.7% of respondents would choose Flutter again.',
          'Dart Usage: 94.9% of companies use Dart as their programming language.',
        ],
      ),
      rightBuilder: (context) => AutoSwipeCarousel(
        duration: Duration(seconds: 5),
        cardColor: Colors.white,
        children: [
          for (int i = 0; i <= 34; i++)
            _CaseStudy(
              imagePath: 'assets/images/cto/cto-$i.png',
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
