import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


addNotes(BuildContext context){
  showModalBottomSheet(context: context, builder: (context) => Container(
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
  ),);

}