import 'package:flutter/material.dart'; 

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(                        //Esto dibuja el SideBar
      child: ListView(//Se llama a la lista de elementos que ira dentro
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(       //Cabezera del nav bar, aqui iria los nombres y cuenta del usuario
              accountName: Text("George"),
              accountEmail: Text("George@hotmail.com"),
              currentAccountPicture: CircleAvatar(
                child:ClipOval(
                  child:Image.network(
                    "https://commons.wikimedia.org/wiki/Main_Page#/media/File:Georgia_Jvari_monastery_IMG_9345_2070.jpg",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  )
                )
              ),
            decoration: BoxDecoration( //Fondo para el marco
              color: Colors.orange,
            ),

          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Cuenta"),
            onTap:() => print("Cuenta")
          ),
          ListTile(
              leading: Icon(Icons.looks),
              title: Text("Gustos"),
              onTap:() => print("Gustos")
          ),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configuración"),
              onTap:() => print("Configuración")
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.power_off),
              title: Text("Cerrar Sesión"),
              onTap:() => print("Cerrar Sesión")
          ),
        ],
      ),
    );
  }
}

