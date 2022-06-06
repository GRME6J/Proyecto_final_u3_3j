import 'package:flutter/material.dart';
import 'package:garcia/Inicio.dart';
import 'package:garcia/Home.dart';
import 'package:garcia/Empleados.dart';
import 'package:garcia/Clientes.dart';
import 'package:garcia/Personal.dart';
import 'package:garcia/Apps.dart';
import 'package:garcia/Datos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      initialRoute: '/datos',
      routes: {
        '/': (context) => Inicio(),
        '/home': (context) => Home(),
        '/empleados': (context) => Empleados(),
        '/clientes': (context) => Clientes(),
        '/personal': (context) => Personal(),
        '/apps': (context) => Apps(),
        '/datos': (context) => Datos(),
      },
    );
  }
}
