import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pokeapi/repositories/pokedex/pokedex.dart';
import 'package:pokeapi/viewmodels/pokedex_view_model.dart';

class PokedexView extends StatelessWidget {
  PokedexViewModel viewModel = PokedexViewModel();

  PokedexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FutureBuilder(
                  future: viewModel.getPokedex(context),
                  builder:
                      (BuildContext context, AsyncSnapshot<Pokedex> snapshot) {
                    if (snapshot.hasError) {
                      return const Center(
                          child:
                              Text("Errore non previsto. Riprova più tardi."));
                    }

                    if (snapshot.connectionState != ConnectionState.done &&
                        !snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return ListView.builder(
                      itemCount: snapshot.data?.results?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          trailing: IconButton(
                            icon:
                                const Icon(Icons.keyboard_arrow_right_outlined),
                            onPressed: () => viewModel.getPokemonInfo(
                                snapshot.data!.results![index], context),
                          ),
                          title: Text(
                            snapshot.data!.results![index].name!,
                            textAlign: TextAlign.center,
                          ),
                          leading: SizedBox(
                            height: 90,
                            width: 90,
                            child: FittedBox(
                              child: Image.network(
                                snapshot.data!.results![index].img!,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
