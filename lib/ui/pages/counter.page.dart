import 'package:flutter/material.dart';
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: Text('Counter Value ${counter}',style: Theme.of(context).textTheme.headline3,),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState((){
                --counter;
              });
              print(counter);
            },
          ),
          SizedBox(width: 8,),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState((){
                ++counter;
              });
              print(counter);
            },
          )
        ],
      ),
    );
  }
}
