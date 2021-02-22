import 'package:flutter/material.dart';
import 'package:pokedex/models/model.dart';

class DetailsScreen extends StatelessWidget {
  final Pokemon pokemon;
  final TextStyle style = TextStyle(color: Colors.white, fontSize: 16);

  DetailsScreen({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(pokemon.name),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(pokemon.image),
            Text(
              "Name: " + pokemon.name,
              style: style,
            ),
            Text(
              "Height: " + pokemon.height,
              style: style,
            ),
            Text(
              "Weight: " + pokemon.weight,
              style: style,
            )
          ],
        ),
      ),
    );
  }
}
