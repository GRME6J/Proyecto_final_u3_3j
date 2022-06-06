import 'package:flutter/material.dart';
import 'package:garcia/navigationBar.dart';

class Datos extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Datos',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'DATOS',
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 280,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Image.network(
                              'https://github.com/GRME6J/Imagenes2/blob/main/foto_portada.png?raw=true',
                              height: 200,
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 0,
                            right: 0,
                            child: Image.network(
                              'https://github.com/GRME6J/Imagenes2/blob/main/pfp.jpg?raw=true',
                              width: 160,
                              height: 160,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 5),
                      child: Text(
                        'Marlon García',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
                      child: Text(
                        ':(:',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: SizedBox(
                        height: 240,
                        width: double.infinity,
                        child: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                leading: Icon(Icons.location_on),
                                title: Text('Ubicacion: México'),
                              ),
                              ListTile(
                                leading: Icon(Icons.home_work_sharp),
                                title: Text('Escuela: CBTIS 128'),
                              ),
                              ListTile(
                                leading: Icon(Icons.grade),
                                title: Text('Especialidad: Programación'),
                              ),
                              ListTile(
                                leading: Icon(Icons.android),
                                title: Text('App: Uber'),
                              ),
                              ListTile(
                                leading: Icon(Icons.book),
                                title: Text('Profesor: Nava'),
                              ),
                            ],
                          ).toList(),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: Text(
                        'Ver conclusión',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/conclusion');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        minimumSize: Size(200, 60),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    )
                  ],
                ),
              ),
              navigationBar(contexto: context, active: 'datos')
            ],
          ),
        ),
      ),
    );
  }
}
