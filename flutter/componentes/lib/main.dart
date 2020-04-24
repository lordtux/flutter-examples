import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
  
 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Componentes App',
       // home: HomePage(), // O esta línea o la ruta '/'
       initialRoute: '/', // puede ser cualquier cosa, que coincida con la ruta
       
       routes: getApplicationRoutes(),

       onGenerateRoute: getDefaultRoute,
     );
   }

 }