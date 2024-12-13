import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text('Página Inicial'),
            onTap: () {
              Navigator.pushNamed(context, '/inicial');
            },
          ),
          ListTile(
            title: Text('Informações'),
            onTap: () {
              Navigator.pushNamed(context, '/sobre');
            },
          ),
        ],
      ),
    );
  }
}