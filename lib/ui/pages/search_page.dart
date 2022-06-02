import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/widgets/artwork_card.dart';
import 'package:peru_stars_mobile/ui/widgets/artist_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0,horizontal: 30),
      child: Column(
        children: [
          ArtistCard(),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Artistas",),
                Tab(text: "Obras",),
                Tab(text: "Eventos",),
              ],
            ),
          ),
          SizedBox(
            height: 450,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    ArtistCard(),
                    ArtistCard(),
                    ArtistCard(),
                    ArtistCard(),
                    ArtistCard(),
                    ArtistCard(),
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
          // Expanded, SizedBox, Container
        ],
      ),
    );
  }
}
