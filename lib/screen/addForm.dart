import 'package:flutter/material.dart';

import 'package:learn_flutter_67_1/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Name")),
              TextFormField(
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: "Job"),
                items: Job.values.map((key) {
                  return DropdownMenuItem(value: key, child: Text(key.title));
                }).toList(),
                onChanged: (value) {
                  print("value = $value");
                },
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
