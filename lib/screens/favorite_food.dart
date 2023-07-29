import 'package:flutter/material.dart';

class FavoriteFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Favoritos'),
      ),
      body: Center(
        child: Text(
          'Vagina ambulante',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
