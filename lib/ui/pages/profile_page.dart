import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:peru_stars_mobile/ui/widgets/SideBar.dart';
import 'package:peru_stars_mobile/ui/widgets/artwork_card.dart';

import '../widgets/BottomBar.dart';
import '../widgets/NavBar.dart';
import '../widgets/artist_card.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: NavBar(),
      drawer: SideBar(),
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        children: [
          UserPhoto(),
          Container(
            margin: EdgeInsets.all(20),
            height: 60,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("George Hernández", style: Theme.of(context).textTheme.headline3,),
                Container(
                  height: 3,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Text("Músico"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.group, color: Colors.red,),
                Spacer(flex: 1,),
                Text("988"),
                Spacer(flex: 4,),
                Icon(Icons.email, color: Colors.red,),
                Spacer(flex: 1,),
                Text("george.hnz28@gmail.com"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            child: Text(
              "Hola!, Soy George, un músico aficionado en busca de un sueño... Toco instrumentos como la guitarra y el piano, y poco a poco voy mejorando en el canto.",
                style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "Mis Obras",
                ),
                Tab(
                  text: "Mis Eventos",
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
        ],
      ),
    );
  }
}

class PageCounts extends StatelessWidget {
  const PageCounts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Seguidores",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Text(
                "10",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "Likes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Text(
                "5",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final double height = 200.0;
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/6/7/w900X450/D5trSdGX4AAwvkc.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UserPhoto(),
          Text(
            "Jorge Sanchez",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          Text(
            "jorge@gmail.com",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class UserPhoto extends StatelessWidget {
  final double size;
  const UserPhoto({
    this.size = 100,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/d/d1/CARLOS-WARD-PERFIL.png'),
          fit: BoxFit.contain,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
    );
  }
}
