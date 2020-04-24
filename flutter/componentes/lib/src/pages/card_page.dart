import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0, // sombra. el default = 1.0
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Soy el titulo'),
            subtitle: Text('Yo soy el subtitulo de la tarjeta. La verdad mejor hubiera sido lorem impusm pero ta. Esto puede seguir y seguir largo nomas. Que vamo a hacer ! es lo que hay valor!'),
            leading: Icon(Icons.photo_album, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment : MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card =  Card(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://s23527.pcdn.co/wp-content/uploads/2019/01/Aquamarine.jpg.optimal.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 250),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Soy un texto libre')
          )

        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
    );
  }
}