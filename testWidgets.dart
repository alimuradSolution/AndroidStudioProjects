import 'package:flutter/material.dart';
import 'package:urdu_shayari/Widgets/sadPoemDescriptionList.dart';

class Tests extends StatelessWidget {
  List<Widget> list = [
    PoemDescriptionListItems(
      favoriteColor: Colors.grey,
      authorName: 'Trista Matoor',
      title: 'The Sun and Her Flowers',
    ),
    PoemDescriptionListItems(
      favoriteColor: Colors.grey,
      authorName: 'Kohli Gibran',
      title: 'The Prophet',
    ),
    PoemDescriptionListItems(
      favoriteColor: Colors.grey,
      authorName: 'Trista Matoor',
      title: 'An American Lyric',
    ),
    PoemDescriptionListItems(
      favoriteColor: Colors.grey,
      authorName: 'Trista Matoor',
      title: 'The Flowers of Evil',
    ),
    PoemDescriptionListItems(
      favoriteColor: Colors.grey,
      authorName: 'Trista Matoor',
      title: 'No Matter the Wreckage',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(height: 120, child: list[index]);
      },
    );
  }
}
