import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';
import 'package:introduction_to_flutter/widgets/widgets.dart';

class FlutterCommunityRoadmapSlide extends FlutterDeckSlideWidget {
  const FlutterCommunityRoadmapSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/vgv-community-roadmap',
            steps: 10,
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter CTO Report 2024',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      backgroundBuilder: (context) => const MeshBackground(
        imagePath: 'assets/images/vgv/1.png',
      ),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
          "1- Flutter's future is community-driven",
          '2- Focus on stability and performance',
          '3- Improve developer experience',
          '4- Enhance tooling and debugging',
          '5- Expand platform support',
          '6- Strengthen ecosystem and packages',
          '7- Prioritize accessibility and inclusivity',
          '8- Foster collaboration and contributions',
          '9- Invest in education and resources',
          '10- Promote commercial adoption',
        ],
      ),
      rightBuilder: (context) => AutoSwipeCarousel(
        duration: const Duration(seconds: 3),
        cardColor: Colors.white,
        children: [
          for (int i = 1; i <= 6; i++)
            _CaseStudy(
              imagePath: 'assets/images/vgv/$i.png',
              title: 'Case Study ${i + 1}',
            ),
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
