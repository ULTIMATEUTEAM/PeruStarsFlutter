import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _Carousel();
}

class _Carousel extends State<Carousel> {
  final List<String> imageList = [
    "https://hotpot.ai/images/site/ai/art_maker/teaser.jpg",
    "https://www.metmuseum.org/-/media/images/art/collection-landing-page/clp_teaser_700x444.jpg?sc_lang=en",
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://images.newindianexpress.com/uploads/user/imagelibrary/2021/6/7/w900X450/D5trSdGX4AAwvkc.jpg",
    "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 0),
      child: CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: false
        ),
        items: imageList.map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.network(e,
                width: 1650,
                height: 650,
                fit: BoxFit.cover,
              )
            ],
          ),
        )).toList(),
      ),
    );
  }
}
