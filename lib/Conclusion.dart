import 'package:flutter/material.dart';
import 'package:garcia/navigationBar.dart';

class Conclusion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conclusion',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'CONCLUSION',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Con la culminacion de esta actividad puedo concluir con que, para el desarrollo de aplicaciones moviles en este caso de android, es necesario el uso de plataformas como flutter por que ayuda y nos sirve para poder desarollar la estructura de la aplicacion, con la variedad de widgets que tiene permitiendo así, poder crear infinidad de interfaces de usuario para poder adaptar a las necesiades de la aplicacion o el cliente, en este caso los requerimentos fueron las paginas de empleados, clientes, sus registros, desarollador, conclusion, usar un gridview, un listview, todo esto fue lo pedido y lo desarollado en flutlab',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
