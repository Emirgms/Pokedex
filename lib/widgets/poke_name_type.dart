import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? "N/A",
                  style: Constants.appPokemonNameTitleStyle(),
                ),
              ),
              Text(
                '#${pokemon.num ?? ""}',
                style: Constants.appPokemonNameTitleStyle(),
              ),
            ],
          ),
          SizedBox(height: 0.02.sh),
          Chip(
              label: Text(
            pokemon.type?.join(' , ') ?? "N/A",
            style: Constants.appTypeChipTextStyle(),
          )),
        ],
      ),
    );
  }
}
