import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/services/pokedex_api.dart';
import 'package:flutter_pokedex/widgets/pokelist_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _futurePokeList;
  @override
  void initState() {
    super.initState();
    _futurePokeList = PokedexApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
        future: _futurePokeList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> _pokeList = snapshot.data!;
            return GridView.builder(
              itemCount: _pokeList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3,
              ),
              itemBuilder: (context, index) =>
                  PokeListItem(pokemon: _pokeList[index]),
            );
          } else if (snapshot.hasError) {
            return Text("Hata");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
