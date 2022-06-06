import 'package:flutter/material.dart';
import 'package:garcia/navigationBar.dart';

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apps',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Apps',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                    child: Text(
                      'Descarga y prueba nuestras aplicaciones',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        // childAspectRatio: 1,
                      ),
                      children: [
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/uber_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/uberdiver_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/ubereats_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/ubereatsmanager_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/ubereatsrestaurantes_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/uberfleet_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/uberfreight_app.webp'),
                        Image.network('https://raw.githubusercontent.com/GRME6J/Imagenes2/main/uberlite_app.webp'),
                      ],
                    ),
                  ),
                ],
              ),
              navigationBar(contexto: context, active: 'apps')
            ],
          ),
        ),
      ),
    );
  }
}
