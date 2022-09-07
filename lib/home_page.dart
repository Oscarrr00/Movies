import 'package:flutter/material.dart';
import 'package:movies/item_movie.dart';
import 'package:movies/popcorns.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> _listElements = [
    {
      "title": "Star wars",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
    },
    {
      "title": "Black widow",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/0NTTbFn.jpg",
    },
    {
      "title": "Frozen 2",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
    {
      "title": "Joker",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/trdzMAl.jpg",
    },
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie list"),
      ),
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          _moviesArea(listElements: _listElements),
          popcorns(),
        ],
      ),
    );
  }
}

class _moviesArea extends StatelessWidget {
  const _moviesArea({
    Key? key,
    required List<Map<String, String>> listElements,
  })  : _listElements = listElements,
        super(key: key);

  final List<Map<String, String>> _listElements;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _listElements.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemMovie(movie: _listElements[index]);
        },
      ),
    );
  }
}
