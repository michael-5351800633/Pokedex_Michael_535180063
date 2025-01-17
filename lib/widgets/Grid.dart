import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/model.dart';
import 'package:pokedex/screens/details.dart';

class PokemonGridItem extends StatelessWidget {
  final Pokemon pokemon;

  PokemonGridItem({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: Image.network(pokemon.image),
          ),
          Text(pokemon.name,
              style: TextStyle(fontSize: 16, color: Colors.black)),
          Text(pokemon.number, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
