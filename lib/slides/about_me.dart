import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AboutMeSlide extends FlutterDeckSlideWidget {
  const AboutMeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/agenda-',
            steps: 2,
            header: FlutterDeckHeaderConfiguration(title: 'Agenda'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
          '''
Software Engineer from Lithuania 🇱🇹
              > 5 years of experience in mobile development 
              > fsewf📱
              > 2 years of experience in Flutter & Dart
              > 1 year of experience in Android development
          ''',
          'Mobile Tech Lead @ Billo 🚀',
          'Google Developer Expert for Flutter & Dart 💙',
          'Organiser @ Flutter Vilnius 🎉',
          'Your go-to Flutter meme person 🫡',
        ],
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 0.8,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Image.asset('assets/images/me/me.jpg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
