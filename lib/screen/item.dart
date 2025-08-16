import 'package:flutter/material.dart';

import 'package:learn_flutter_67_1/model/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.pinkAccent,
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                personList[index].name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "${personList[index].age} ปี",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                personList[index].job,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        );
      },
    );
  }
}
