import 'package:flutter/material.dart';
import 'package:instagramappui/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(2),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(Icons.search),
                Container(
                  color: Colors.grey[500],
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
