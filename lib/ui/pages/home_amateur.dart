import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/widgets/artist_card.dart';
import 'package:peru_stars_mobile/ui/widgets/artwork_card.dart';
import 'package:peru_stars_mobile/ui/widgets/list_artist.dart';


class HomeAmateur extends StatefulWidget {
  const HomeAmateur({Key? key}) : super(key: key);

  @override
  State<HomeAmateur> createState() => _HomeAmateurState();
}

class _HomeAmateurState extends State<HomeAmateur> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Container(margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      child: ListView(
          children:[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Text("Tus Artistas",  style: Theme.of(context).textTheme.headline3,),
            ),

            const SizedBox(
              height: 10,
            ),
            ListArtist(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Obras",),
                  Tab(text: "Eventos",),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              height: 450,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    children: [
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                    ],
                  ),
                  ListView(
                    children: [
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                      ArtworkCard(),
                    ],
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}

