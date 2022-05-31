import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil'),),
      body: Center(
        child: Text('Profil Page',style: Theme.of(context).textTheme.headline3,),
      ),
    );
  }
}
