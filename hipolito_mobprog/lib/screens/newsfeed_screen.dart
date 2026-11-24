import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userAvatar: 'assets/images/jason.jpg',
          userName: 'Jason Duval',
          postContent: 'Kamusta yung laro guys',
          numOfLikes: 100,
          date: 'November 19',
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/jb.jpg',
          userName: 'JB Hipolito',
          postContent: 'Just woke up from a nap',
          numOfLikes: 150,
          date: 'November 20',
          hasImage: true,
          imagePath: 'assets/images/gta6.jpg',
        ),
      ],
    );
  }
}
