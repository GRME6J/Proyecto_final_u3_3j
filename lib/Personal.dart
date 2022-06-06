import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PERSONAL',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
              child: SizedBox(
                height: 550,
                width: double.infinity,
                child: ListView(
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      ListTile(
                        title: Text('Victorina de Leon'),
                      ),
                      ListTile(
                        title: Text('Fabian Mira'),
                      ),
                      ListTile(
                        title: Text('Cecilio Ruiz'),
                      ),
                      ListTile(
                        title: Text('Teresa de La Rosa'),
                      ),
                      ListTile(
                        title: Text('Hugo Batista'),
                      ),
                      ListTile(
                        title: Text('Hortensia Guirao'),
                      ),
                      ListTile(
                        title: Text('Ainhoa Trujillo'),
                      ),
                      ListTile(
                        title: Text('Eulogio Melian'),
                      ),
                      ListTile(
                        title: Text('Ofelia Vargas'),
                      ),
                      ListTile(
                        title: Text('Carmelo Castaño'),
                      ),
                      ListTile(
                        title: Text('Alfonso Peinado'),
                      ),
                    ],
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
