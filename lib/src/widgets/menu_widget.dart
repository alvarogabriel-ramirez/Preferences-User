import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';


class MenuWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Drawer(

     child: ListView(
      padding: EdgeInsets.zero,

       children: <Widget>[
      DrawerHeader(
            child: Container(), // Aquí simplemente abrimos y cerramos el Container, y abajo va la imagen
            decoration: BoxDecoration(
              image: DecorationImage(
                image://NetworkImage('https://media.giphy.com/media/3kzrzzQXUfI6bmUNf3/giphy.gif'),
                 AssetImage('assets/cbaef4741469faa4b2d095da84403e98.gif'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.black),
            title: Text('Home'),
            onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routName),
          ),
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.black),
            title: Text('Party Mode'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.black),
            title: Text('People'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.black),
            title: Text('Settings'),
            onTap: (){ 
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            }
          ),
       ],
     ) ,
   );
  }
}