import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // Ordered from newest to oldest
  static const List<Map<String, String>> notifications = [
    {
      'name': 'NBA',
      'post': 'Updated Standings',
      'description': 'Just now',
    },
    {
      'name': 'Nvidia',
      'post': 'Bumalik na ko erp',
      'description': 'Just now',
    },
    {
      'name': 'Dunkin Donuts',
      'post': 'Bibili ka? o bibili ka',
      'description': '4 mins ago',
    },
    {
      'name': 'Mcdo',
      'post': 'Bagong branch sa tacloban',
      'description': '20 mins ago',
    },
    {
      'name': 'Dr. Doom',
      'post': 'I AM DOOM!!',
      'description': '26 mins ago',
    },
    {
      'name': 'KFC',
      'post': 'Collect them all',
      'description': '45 mins ago',
    },
    {
      'name': 'Kyrie Irving',
      'post': 'Panalo na naman?',
      'description': '21 hrs ago',
    },
    {
      'name': 'Cooper Flagg',
      'post': 'MVP!!',
      'description': '22 hrs ago',
    },
    {
      'name': 'Peter Parker',
      'post': 'Di nag aaya, gusto ko sumali sa movie',
      'description': 'November 27',
    },
    {
      'name': 'Tony Stark',
      'post': 'Panahon na para maging kalaban',
      'description': 'November 25',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = notifications[index];
          return notif.Notification(
            name: item['name']!,
            post: item['post']!,
            description: item['description']!,
          );
        },
      ),
    );
  }
}