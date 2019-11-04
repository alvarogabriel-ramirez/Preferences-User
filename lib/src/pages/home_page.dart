import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routName = 'home';

    final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routName;

    return Scaffold(appBar: AppBar(
      title: Text('Preferencias de usuario'),
      backgroundColor:(prefs.colorSecundario)? Colors.teal :  Colors.black54,
    ),
    drawer:MenuWidget(),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Color Secundario: ${prefs.colorSecundario}'),
        Divider(),
                Text('Género: ${prefs.genero}'),
        Divider(),
                Text('Nombre Usuario:  ${prefs.nombreUsuario}'),
        Divider(),
      ],
    ),
    );
  }

}