import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones = []; 

  _MenuProvider() {
  }

  // read json ...
  Future<List<dynamic>> cargarData() async {
    final result = await rootBundle.loadString('data/menu_opts.json');
    
    // json string to map
    Map dataMap = json.decode(result);
    opciones = dataMap['rutas'];
    
    return opciones;
  }
}

final menuProvider = new _MenuProvider();