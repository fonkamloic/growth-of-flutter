import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:introduction_to_flutter/mesh_gradient_background.dart';
import 'package:introduction_to_flutter/widgets/auto_swipe_carousel.dart';

class ThankYouSlide extends FlutterDeckSlideWidget {
  const ThankYouSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (c) => FlutterDeckSlide.split(
        rightBuilder: (context) => AutoSwipeCarousel(
          duration: const Duration(seconds: 4),
          cardColor: Colors.white,
          children: [
            for (int i = 1; i <= 28; i++)
              _CaseStudy(
                imagePath: 'assets/images/fluttercon/$i.png',
                title: 'Case Study ${i + 1}',
              ),
          ],
        ),
        leftBuilder: (c) => FlutterDeckSlide.title(
          title: 'Question? Thank you!',
          subtitle: 'Support the community, share your knowledge!',
          backgroundBuilder: (c) => const MeshBackground(
            imagePath: 'assets/images/me.jpeg',
          ),
        ),
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
