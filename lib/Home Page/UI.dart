import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text("${index + 1}")),
              title: Text("This Is Title"),
              subtitle: Text("data"),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: ListTile(
                      title: Text("Update"),
                      trailing: Icon(Icons.edit),
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      title: Text("Delete"),
                      trailing: Icon(Icons.delete),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
