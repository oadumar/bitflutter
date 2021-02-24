import 'package:cursoflutter/model/news.dart';
import 'package:cursoflutter/view/widgets/news_card.dart';
import 'package:flutter/material.dart';

class BuildItemList extends StatelessWidget {
  final News retornadoData;

  BuildItemList({Key key, @required this.retornadoData});

  @override
  Widget build(BuildContext context) {
    return NewsCard(
      news: retornadoData,
    );
  }
}
