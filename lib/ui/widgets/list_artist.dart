import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem {
  final String urlImage;
  final String name;

  const CardItem({
    required this.urlImage,
    required this.name,
  });
}

class ListArtist extends StatefulWidget {
  const ListArtist({Key? key}) : super(key: key);

  @override
  State<ListArtist> createState() => _ListArtistState();
}

class _ListArtistState extends State<ListArtist> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStTXW1e2b8PiutG32NXTbzpT8V5RatXCMyIw&usqp=CAU',
        name: 'Hugo Quispe'),
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Hailee_Steinfeld_%2828787553517%29_%28cropped%29.jpg/1200px-Hailee_Steinfeld_%2828787553517%29_%28cropped%29.jpg',
        name: 'Javier Chavez'),
    CardItem(
        urlImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStTXW1e2b8PiutG32NXTbzpT8V5RatXCMyIw&usqp=CAU',
        name: 'Hugo Chavez'),
    CardItem(
        urlImage:
            'https://cloudfront-us-east-1.images.arcpublishing.com/culturacolectiva/KRXPOCOYM5HGVNQJ4SSCXHEIOU.jpg',
        name: 'Hugo Quispe2'),
    CardItem(
        urlImage:
            'https://definicion.mx/wp-content/uploads/2015/02/Artista.jpg',
        name: 'Hugo Quispe3'),
    CardItem(
        urlImage:
            'https://definicion.mx/wp-content/uploads/2015/02/Artista.jpg',
        name: 'Hugo Quispe3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, _) => SizedBox(width: 12),
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
    );
  }

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 90,
        height: 100,
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(item.urlImage),
            ),
            Text(
              item.name,
              style: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFB7B7D2)),
            ),
          ],
        ),
      );
}
