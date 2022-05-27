import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/pages/carousel.dart';

class ArtworkPage extends StatefulWidget {
  const ArtworkPage({Key? key}) : super(key: key);

  @override
  State<ArtworkPage> createState() => _ArtworkPage();
}

class _ArtworkPage extends State<ArtworkPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(child: Carousel()),
          Container(child: Text("Artwork"))
        ],
      ),
    );
  }
}
