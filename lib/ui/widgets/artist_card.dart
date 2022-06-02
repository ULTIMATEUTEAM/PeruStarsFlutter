import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 300,
          height: 100,
          margin: EdgeInsets.fromLTRB(22, 0, 15, 0),
          child: Row(            
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.network("https://picsum.photos/200",
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shakira", style: Theme.of(context).textTheme.headline3,),
                    Text("Música", style: Theme.of(context).textTheme.bodyText2,),
                  ],
                ),
              ),
              Spacer(flex: 1,),
              Container(
                height: 60,
                width: 12,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}