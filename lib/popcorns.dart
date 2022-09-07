import 'package:flutter/material.dart';

class popcorns extends StatefulWidget {
  const popcorns({super.key});

  @override
  State<popcorns> createState() => _nameState();
}

class _nameState extends State<popcorns> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2LtUXgiYtd2cHFfNInfEdK52soqGyxEwrcg&usqp=CAU",
            height: 120),
        Expanded(
          child: Column(children: [
            Text("Palomitas (Medianas):",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            SizedBox(height: 10),
            Text("${contador}"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                  onPressed: () {
                    contador++;
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_upward)),
              IconButton(
                  onPressed: () {
                    contador--;
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_downward)),
            ]),
          ]),
        ),
      ]),
    );
  }
}
