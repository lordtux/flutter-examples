import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsFuncional()
      ),
    );
  }

  List<Widget> _crearItemsFuncional() {
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(color: Colors.lightBlue)
        ],
      );
    }).toList();
  }

  // alternativa iterando ...
  List<Widget> _crearItemsIterativo() {
    List<Widget> lista = new List<Widget>();
    for (var opt in opciones) {
      final tempWidget = new ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider(color: Colors.blue));
    }
    return lista;
  }

}


