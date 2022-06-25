import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/widgets/artwork_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final artworks = 6;

    if(artworks==0){
      return ListView(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        children: [
          Text("Tus favoritos", style: Theme.of(context).textTheme.headline3,),
          Center(
            heightFactor: 25,
            child: Text("No cuentas con obras favoritas"),
          )
        ],
      );
    }

    return ListView(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
      children: [
        Text("Tus favoritos", style: Theme.of(context).textTheme.headline3,),
        Column(
          children: [
            ArtworkCard(),
            ArtworkCard(),
            ArtworkCard(),
            ArtworkCard(),
            ArtworkCard(),
          ],
        )
      ],
    );
  }
}