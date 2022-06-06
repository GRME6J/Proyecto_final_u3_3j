import 'package:flutter/material.dart';
import 'package:garcia/Inicio.dart';
import 'package:garcia/Home.dart';
import 'package:garcia/Empleados.dart';
import 'package:garcia/Clientes.dart';
import 'package:garcia/Personal.dart';
import 'package:garcia/Apps.dart';
import 'package:garcia/Datos.dart';
import 'package:flutter/material.dart';
import 'package:garcia/navigationBar.dart';

class Empleados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Empleados',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'EMPLEADOS',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                        child: Text(
                          '¿Eres conductor?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Ingresa con tus credenciales',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                        ),
                      ),
                      Image.network(
                        'https://github.com/GRME6J/Imagenes2/blob/main/user_undraw.png?raw=true',
                        width: 150,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Ingresa tu ID de conductor',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.vpn_key),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Ingresa tu nombre',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Ingresa tu apellido',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Ingresa tu numero de telefono',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.local_phone),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Ingresa tu correo',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.mail),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Ingresa tu contraseña',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Ingresar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          minimumSize: Size(300, 60),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Ver personal',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/personal');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white60,
                          minimumSize: Size(300, 60),
                        ),
                      ),
                      SizedBox(
                        height: 95,
                      )
                    ],
                  ),
                ),
              ),
              navigationBar(contexto: context, active: 'empleados')
            ],
          ),
        ),
      ),
    );
  }
}

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
