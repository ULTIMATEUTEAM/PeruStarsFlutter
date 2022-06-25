import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/models/artist.dart';
import 'package:peru_stars_mobile/ui/pages/search_view_delegate.dart';
import 'package:peru_stars_mobile/ui/widgets/artwork_card.dart';
import 'package:peru_stars_mobile/ui/widgets/artist_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    final List<Artist> artists = [
      new Artist('Shakira'),
      new Artist('Picasso'),
      new Artist('Eva Ayllon'),
      new Artist('Van Goh'),
      new Artist('Gian Marco'),
      new Artist('Hugo Javier'),
      new Artist('Sebastiao Salgado'),
    ];
    return Container(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: ListTile(
              title: Text('Search', style: Theme.of(context).textTheme.bodyText2,),
              onTap: (){
                showSearch(
                  context: context,
                  delegate: SearchViewDelegate(artists),
                );
              },
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Color(0XFFB7B7D2),
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "Artistas",
                ),
                Tab(
                  text: "Obras",
                ),
                Tab(
                  text: "Eventos",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 410,
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
