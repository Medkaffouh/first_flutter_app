import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.deepOrange])),
              child: Center(
                child: CircleAvatar(
                  backgroundImage:
                  AssetImage("images/mohamed_kaffouh_profil.jpeg"),
                  radius: 60,
                ),
              )),
          ListTile(
            title: Text('Counter',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.home,color: Colors.orange,),
            trailing: Icon(Icons.arrow_right,color: Colors.orange,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            },
          ),
          Divider(height: 2,color: Colors.deepOrange,),
          ListTile(
            title: Text('Profil',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.home,color: Colors.orange,),
            trailing: Icon(Icons.arrow_right,color: Colors.orange,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/profil");
            },
          ),
          Divider(height: 2,color: Colors.deepOrange,),
          ListTile(
            title: Text('Gallery',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.home,color: Colors.orange,),
            trailing: Icon(Icons.arrow_right,color: Colors.orange,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/gallery");
            },
          ),
          Divider(height: 2,color: Colors.deepOrange,),
        ],
      ),
    );
  }
}