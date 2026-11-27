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
        NewsFeedCard(
          userAvatar: 'assets/images/tony_profile.jpg',
          userName: 'Tony Stark',
          postContent: 'Panahon na para maging kalaban',
          numOfLikes: 700,
          date: 'November 25',
          hasImage: true,
          imagePath: 'assets/images/tony_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/cooper_profile.jpg',
          userName: 'Cooper Flagg',
          postContent: 'MVP!!',
          numOfLikes: 550,
          date: '22 hrs ago',
          hasImage: true,
          imagePath: 'assets/images/cooper_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/peter_profile.jpg',
          userName: 'Peter Parker',
          postContent: 'Di nag aaya, gusto ko sumali sa movie',
          numOfLikes: 967,
          date: 'November 27',
          hasImage: true,
          imagePath: 'assets/images/peter_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/kyrie_profile.jpg',
          userName: 'Kyrie Irving',
          postContent: 'Panalo na naman?',
          numOfLikes: 890,
          date: '21 hrs ago',
          hasImage: true,
          imagePath: 'assets/images/kyrie_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/doom_profile.jpg',
          userName: 'Dr. Doom',
          postContent: 'I AM DOOM!!',
          numOfLikes: 995,
          date: '26 mins ago',
          hasImage: true,
          imagePath: 'assets/images/doom_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/nba_profile.jpg',
          userName: 'NBA',
          postContent: 'Updated Standings',
          numOfLikes: 100,
          date: 'Just now',
          hasImage: true,
          imagePath: 'assets/images/nba_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/dunkin_profile.jpeg',
          userName: 'Dunkin Donuts',
          postContent: 'Bibili ka? o bibili ka',
          numOfLikes: 40,
          date: '4 mins ago',
          hasImage: true,
          imagePath: 'assets/images/dunkin_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/nvidia_profile.jpg',
          userName: 'Nvidia',
          postContent: 'Bumalik na ko erp',
          numOfLikes: 10,
          date: 'Just now',
          hasImage: true,
          imagePath: 'assets/images/nvidia_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/mcdo_profile.jpg',
          userName: 'Mcdo',
          postContent: 'Bagong branch sa tacloban',
          numOfLikes: 100,
          date: '20 mins ago',
          hasImage: true,
          imagePath: 'assets/images/mcdo_post.jpg',
          squareImage: true,
        ),
        NewsFeedCard(
          userAvatar: 'assets/images/kfc_profile.jpg',
          userName: 'KFC',
          postContent: 'Collect them all',
          numOfLikes: 80,
          date: '45 mins ago',
          hasImage: true,
          imagePath: 'assets/images/kfc_post.jpg',
          squareImage: true,
        ),
      ],
    );
  }
}
