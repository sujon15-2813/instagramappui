import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // profile photo
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        //post
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300],
          ),
        ),
        //below the post =>button and  comment
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmarks),
            ],
          ),
        ),
        //Liked by...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and'),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //caption
        // Padding(
        //   padding: const EdgeInsets.only(left: 16.0, top: 8),
        //   child: RichText(
        //     text: TextSpan(

        //         style: TextStyle(
        //           color: Colors.black,
        //         ),
        //         children: [
        //           TextSpan(
        //               text: 'sk',
        //               style: TextStyle(fontWeight: FontWeight.bold)),
        //           TextSpan(
        //             text:
        //                 'Maximum  boys and girls are addicted in social media ',
        //           ),
        //         ]),
        //   ),
        // ),
        //comment
      ],
    );
  }
}
