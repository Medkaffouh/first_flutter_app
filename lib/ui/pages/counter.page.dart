import 'package:flutter/material.dart';
class CounterPage extends StatelessWidget {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: Text('Counter Value ${counter}',style: Theme.of(context).textTheme.headline3,),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ++counter;
          print(counter);
        },

      ),
    );
  }
}