import 'package:flutter/material.dart';

class ItemMovie extends StatelessWidget {
  final Map<String, String> movie;
  ItemMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(children: [
          Positioned.fill(
            child: Image.network(
              "${movie["image"]}",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(4),
              color: Color.fromARGB(244, 39, 131, 207),
              child: Column(children: [
                Text(
                  "${movie["title"]}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "${movie["description"]}",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
