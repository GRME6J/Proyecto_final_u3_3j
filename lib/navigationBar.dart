import 'package:flutter/material.dart';

class navigationBar extends StatelessWidget {
  navigationBar({
    @required this.contexto,
    @required this.active,
  });

  final contexto;
  final active;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 15,
      right: 15,
      child: Material(
          elevation: 10,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          child: Container(
            height: 60.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/home');
                  },
                  icon: Icon(Icons.home, color: active == 'home' ? Colors.black : Colors.grey[400]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/empleados');
                  },
                  icon: Icon(Icons.switch_account, color: active == 'empleados' ? Colors.black : Colors.grey[400]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/clientes');
                  },
                  icon: Icon(Icons.login_rounded, color: active == 'clientes' ? Colors.black : Colors.grey[400]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/apps');
                  },
                  icon: Icon(Icons.get_app, color: active == 'apps' ? Colors.black : Colors.grey[400]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/datos');
                  },
                  icon: Icon(Icons.admin_panel_settings, color: active == 'datos' ? Colors.black : Colors.grey[400]),
                ),
              ],
            ),
          )),
    );
  }
}
