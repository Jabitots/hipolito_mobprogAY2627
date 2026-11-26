import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String userAvatar;
  final String postContent;
  final String date;
  final int numOfLikes;
  final int numOfComments;
  final int numOfShares;
  final bool hasImage;
  final String? imagePath;
  final bool squareImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.userAvatar,
    required this.postContent,
    required this.date,
    this.numOfLikes = 200,
    this.numOfComments = 42,
    this.numOfShares = 5,
    this.hasImage = false,
    this.imagePath,
    this.squareImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Avatar, Name, Date
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.asset(
                    userAvatar,
                    width: ScreenUtil().setSp(40),
                    height: ScreenUtil().setSp(40),
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(width: ScreenUtil().setWidth(10)),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),

                    Row(
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),

                        SizedBox(width: ScreenUtil().setWidth(3)),

                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),

                const Spacer(),

                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Dynamic Media / Placeholder
            if (hasImage)
              imagePath != null && imagePath!.isNotEmpty
                  ? squareImage
                        ? AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              imagePath!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Image.asset(
                            imagePath!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                  : SizedBox(
                      height: ScreenUtil().setHeight(200),
                      child: const Placeholder(),
                    ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // 1. Stats Row (Likes, Comments, Shares count)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: numOfLikes.toString(),
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey.shade700,
                ),

                Row(
                  children: [
                    CustomText(
                      text: '$numOfComments Comments',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey.shade700,
                    ),

                    SizedBox(width: ScreenUtil().setWidth(10)),

                    CustomText(
                      text: '$numOfShares Shares',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey.shade700,
                    ),
                  ],
                ),
              ],
            ),

            const Divider(thickness: 1),

            // 2. Enhancement 3: Widget-based Action Buttons Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.grey.shade700,
                    size: ScreenUtil().setSp(18),
                  ),
                  label: CustomText(
                    text: 'Like',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey.shade700,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.grey.shade700,
                    size: ScreenUtil().setSp(18),
                  ),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey.shade700,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.redo_outlined,
                    color: Colors.grey.shade700,
                    size: ScreenUtil().setSp(18),
                  ),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),

            const Divider(thickness: 1),

            // 3. Most relevant filter
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  text: 'Most relevant',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),

                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey.shade700,
                  size: ScreenUtil().setSp(20),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // 4. Comment Input Bar
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/jb.jpg',
                    width: ScreenUtil().setSp(30),
                    height: ScreenUtil().setSp(30),
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(width: ScreenUtil().setWidth(8)),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(12),
                      vertical: ScreenUtil().setHeight(8),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomText(
                            text: 'Write a comment...',
                            fontSize: ScreenUtil().setSp(12),
                            color: Colors.grey,
                          ),
                        ),

                        Icon(
                          Icons.sticky_note_2_outlined,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(16),
                        ),

                        SizedBox(width: ScreenUtil().setWidth(6)),

                        Icon(
                          Icons.sentiment_satisfied_alt_outlined,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(16),
                        ),

                        SizedBox(width: ScreenUtil().setWidth(6)),

                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(16),
                        ),

                        SizedBox(width: ScreenUtil().setWidth(6)),

                        Icon(
                          Icons.gif_box_outlined,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(16),
                        ),

                        SizedBox(width: ScreenUtil().setWidth(6)),

                        Icon(
                          Icons.face_outlined,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // 5. View comments footer
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
