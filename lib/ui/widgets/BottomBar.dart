import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:peru_stars_mobile/ui/pages/artwork_page.dart';
import 'package:peru_stars_mobile/ui/widgets/NavBar.dart';
import 'package:peru_stars_mobile/ui/widgets/SideBar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  //Se llaman las paginas a mostrar
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final ArtworkPage home = ArtworkPage();

  Widget _showPage = new ArtworkPage();

  Widget _pageChooser(int page){
    switch(page){
      case 0 :
        return home;
        break;
      default:
        return new Container(
          child:new Center(
            child:new Text("No page found by page chosser")
          )
        );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: NavBar(),
        drawer: SideBar(),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 60.0,

          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.favorite_outline_outlined, size: 30),
            Icon(Icons.calendar_today_outlined, size: 30),

          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.red,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },


        ),
        body: Container(
          child: Center(
            child: _showPage ,
          ),
        ),);
  }
}
