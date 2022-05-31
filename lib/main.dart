import 'package:first_flutter_app/ui/pages/counter.page.dart';
import 'package:first_flutter_app/ui/pages/gallery.page.dart';
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
        "/":(context)=>HomePage(),
        "/profil":(context)=>ProfilPage(),
        "/gallery":(context)=>GalleryPage(),
        "/counter":(context)=>CounterPage(),
      },
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: "/", //if is not exist you have to declare "/" default rout
    );
  }
}
