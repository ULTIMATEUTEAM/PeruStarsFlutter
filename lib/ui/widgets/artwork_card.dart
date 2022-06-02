import 'package:flutter/material.dart';

class ArtworkCard extends StatelessWidget {
  const ArtworkCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      width: 300,
      height: 200,
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
              color: Colors.black26,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.network("https://picsum.photos/350",
                  width: 300,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text("La noche estrellada", style: Theme.of(context).textTheme.headline3,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Row(
                  children: [
                    Text("Van Goh", style: Theme.of(context).textTheme.headline5,),
                    Spacer(flex: 1),
                    Icon(Icons.attach_money, size: 20, color: Colors.red[300],),
                    Text("100", style: Theme.of(context).textTheme.headline4,),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}