import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      home: Scaffold(
        body: Column(
          children: [
            Image.network('https://github.com/GRME6J/Imagenes2/blob/main/uber_banner.jpg?raw=true'),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Muevete con uber',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Introduce tu numero de telefono (obligatorio)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                      ),
                    ),
                    Material(
                      elevation: 10,
                      color: Colors.grey[200],
                      child: Container(
                        width: 250,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '+52',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                            prefixIcon: Icon(Icons.local_phone),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: Text(
                        'Siguiente',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        minimumSize: Size(200, 60),
                      ),
                    ),
                    Text(
                      'Si no tienes cuenta, registrate',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: ElevatedButton(
                        child: Text(
                          'Crear cuenta',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(200, 60),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
