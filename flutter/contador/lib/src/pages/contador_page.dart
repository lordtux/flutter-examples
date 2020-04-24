import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() =>_ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Numeros de clicks:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _resetear),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _quitar),
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar)

      ],
    );   
  }


  void _agregar() => setState(() => _conteo++);
  void _quitar() => setState(() => _conteo--);
  void _resetear() => setState(() => _conteo = 0);

}