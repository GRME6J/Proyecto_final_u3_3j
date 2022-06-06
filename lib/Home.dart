import 'package:flutter/material.dart';
import 'package:garcia/navigationBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'INICIO',
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
                  image: DecorationImage(
                    image: NetworkImage('https://github.com/GRME6J/Imagenes2/blob/main/mapa_bg.png?raw=true'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 100),
                        child: Material(
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 5),
                                              child: Text(
                                                'Para una mejor experiencia',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                              child: Text(
                                                'Activa tu ubicacion para que podamos encontrar al conductor mas rapido',
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.network(
                                        'https://github.com/GRME6J/Imagenes2/blob/main/location_undraw.png?raw=true',
                                        width: 90,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                                    child: ElevatedButton(
                                      child: Text(
                                        'Siguiente',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        minimumSize: Size(200, 60),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              navigationBar(contexto: context, active: 'home')
            ],
          ),
        ),
      ),
    );
  }
}
