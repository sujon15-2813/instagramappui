import 'package:flutter/material.dart';
import 'package:instagramappui/util/bubble_stories.dart';
import 'package:instagramappui/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'sk',
    'rakib',
    'prosanto',
    'sowmik',
    'sakib',
    'habib',
    'siddiqur'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Icon(Icons.favorite),
                      ),
                      Icon(Icons.share),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  })),
          //POST
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: people.length,
                separatorBuilder: (context, index) => Container(
                      height: 13,
                    ),
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
