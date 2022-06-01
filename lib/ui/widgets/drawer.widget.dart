import 'package:first_flutter_app/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.deepOrange])),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                      AssetImage("images/mohamed_kaffouh_profil.jpeg"),
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundImage:
                      AssetImage("images/unknown.jpg"),
                      radius: 60,
                    ),
                  ],
                ),
              )),
          ...(GlobalParams.menus).map((item) {
            return Column(
              children: [
                ListTile(
                  title: Text('${item['title']}',style: const TextStyle(fontSize: 22),),
                  leading: item['icon'],
                  trailing: const Icon(Icons.arrow_right,color: Colors.orange,),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, "${item['route']}");
                  },
                ),
                Divider(color: Colors.deepOrange,height: 4,)
              ],
            );
          })
        ],
      ),
    );
  }
}