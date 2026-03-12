import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note App", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
      body: ListView.builder(

        itemCount: 10,
        itemBuilder: (context, index) {
        return Card(child: ListTile(),);
      },),
    );
  }
}
