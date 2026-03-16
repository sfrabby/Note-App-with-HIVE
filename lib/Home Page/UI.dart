import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get.dart';

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
        onPressed: () {
          Get.bottomSheet(
            // Container এর উচ্চতা যেন কীবোর্ডের সাথে অ্যাডজাস্ট হয় সেজন্য Padding ব্যবহার করা হয়েছে
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(Get.context!).viewInsets.bottom,
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // কন্টেন্ট যতটুকু জায়গা নিবে ততটুকুই থাকবে
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Add a New Note",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                    ),
                    SizedBox(height: 15),

                    // Title এর জন্য TextField
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Title",
                        labelText: "Title",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),

                    // Note এর জন্য TextField
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your note here...",
                        labelText: "Note",
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 4, // নোট সাধারণত বড় হয় তাই ৪ লাইন দেওয়া হয়েছে
                    ),
                    SizedBox(height: 20),

                    // Save Button
                    SizedBox(
                      width: double.infinity, // বাটনটি ফুল উইডথ হবে
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),
                        onPressed: () {
                          // এখানে সেভ করার লজিক লিখবেন
                          Get.back();
                        },
                        child: Text("Save Note"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isScrollControlled: true,
          );
        },
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
