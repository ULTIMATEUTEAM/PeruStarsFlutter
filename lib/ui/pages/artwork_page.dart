import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/widgets/artwork_card.dart';
import 'package:peru_stars_mobile/ui/widgets/carousel.dart';


class ArtworkPage extends StatelessWidget {
  const ArtworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(child: Carousel()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("La noche estrellada", style: Theme.of(context).textTheme.headline3,),
                Text("Van goh", style: Theme.of(context).textTheme.headline5,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Text(
                    "Es una obra pictórica del polímata renacentista italiano Leonardo da Vinci. Fue adquirida por el rey Francisco I de Francia a comienzos del siglo XVI y desde entonces es propiedad del Estado francés.",
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money, size: 30, color: Color(0XFF030047),),
                    Text("250", style: Theme.of(context).textTheme.headline3,),
                    Spacer(flex: 1,),
                    //Icon(Icons.favorite_border, size: 30, color: Colors.red,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border, size: 30, color: Colors.red,),
                    )
                  ],
                ),
              ],
            ),

         ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Más del artista", style: Theme.of(context).textTheme.headline4,),
                ArtworkCard(),
                ArtworkCard(),
                ArtworkCard(),

              ],
            ),
          ),
         // Expanded, SizedBox, Container
        ],
      ),
    );
  }
}
