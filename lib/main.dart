import 'package:first_flutter_app/ui/pages/home.page.dart';
import 'package:first_flutter_app/ui/pages/profil.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home":(context)=>HomePage(),
        "/profil":(context)=>ProfilPage(),
      },
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: "/home", //if is not exist you have to declare "/" default rout
    );
  }
}
