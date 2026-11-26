import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hipolito_mobprogay2627/main.dart';
import 'package:hipolito_mobprogay2627/widgets/newsfeed_card.dart';

void main() {
  testWidgets('feed keeps the original posts and shows five additions', (
    tester,
  ) async {
    await tester.pumpWidget(const HipolitoFacebook());
    await tester.pumpAndSettle();

    final feedScrollable = find.descendant(
      of: find.byType(ListView),
      matching: find.byType(Scrollable),
    );
    const posts = [
      ('Jason Duval', 'Kamusta yung laro guys', 'assets/images/jason.jpg'),
      ('JB Hipolito', 'Just woke up from a nap', 'assets/images/jb.jpg'),
      (
        'Tony Stark',
        'Panahon na para maging kalaban',
        'assets/images/tony_profile.jpg',
      ),
      ('Cooper Flagg', 'MVP!!', 'assets/images/cooper_profile.jpg'),
      (
        'Peter Parker',
        'Di nag aaya, gusto ko sumali sa movie',
        'assets/images/peter_profile.jpg',
      ),
      ('Kyrie Irving', 'Panalo na naman?', 'assets/images/kyrie_profile.jpg'),
      ('Dr. Doom', 'I AM DOOM!!', 'assets/images/doom_profile.jpg'),
    ];

    for (final (name, caption, postAvatar) in posts) {
      await tester.scrollUntilVisible(
        find.text(name),
        500,
        scrollable: feedScrollable,
      );
      await tester.pumpAndSettle();
      expect(find.text(name), findsOneWidget);
      expect(find.text(caption), findsOneWidget);

      final card = find.ancestor(
        of: find.text(name),
        matching: find.byType(NewsFeedCard),
      );
      final images = tester.widgetList<Image>(
        find.descendant(of: card, matching: find.byType(Image)),
      );
      expect((images.first.image as AssetImage).assetName, postAvatar);
      expect(
        (images.last.image as AssetImage).assetName,
        'assets/images/jb.jpg',
      );
      expect(
        find.descendant(of: card, matching: find.byType(ClipOval)),
        findsNWidgets(2),
      );
    }
  });
}
