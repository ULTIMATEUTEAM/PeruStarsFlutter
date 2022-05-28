import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/widgets/carousel.dart';


class ArtworkPage extends StatelessWidget {
  const ArtworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),

         )
         // Expanded, SizedBox, Container
        ],
      ),
    );
  }
}
