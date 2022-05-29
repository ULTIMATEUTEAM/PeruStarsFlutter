import 'package:flutter/material.dart';

class ArtworkCard extends StatelessWidget {
  const ArtworkCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      width: 300,
      height: 150,
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: Colors.black45,
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.network("https://hotpot.ai/images/site/ai/art_maker/teaser.jpg",
                  width: 300,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Text("La noche estrellada", style: Theme.of(context).textTheme.bodyText1,),
            ],
          ),
        ),

      ),
    );
  }
}