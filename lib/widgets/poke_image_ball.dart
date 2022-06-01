import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/UI_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeBallImageUrl = "images/pokeball.png";
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeBallImageUrl,
            height: UIHelper.calculatePokemonAndBallSize(),
            width: UIHelper.calculatePokemonAndBallSize(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) => Icon(Icons.ac_unit),
            placeholder: (context, url) => CircularProgressIndicator(
              color: Colors.red,
            ),
            height: UIHelper.calculatePokemonAndBallSize(),
            width: UIHelper.calculatePokemonAndBallSize(),
            imageUrl: pokemon.img ?? "N/A",
          ),
        )
      ],
    );
  }
}
