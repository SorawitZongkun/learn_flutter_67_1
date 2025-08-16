import 'package:flutter/material.dart';

import 'package:learn_flutter_67_1/model/person.dart';

import 'package:google_fonts/google_fonts.dart';

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
            // color: Colors.pinkAccent,
            color: personList[index].job.color,
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                personList[index].name,
                // style: TextStyle(color: Colors.white, fontSize: 20),
                style: GoogleFonts.kanit(
                  fontSize: 24,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Text(
                "${personList[index].age} ปี",
                // style: TextStyle(color: Colors.white, fontSize: 20),
                style: GoogleFonts.kanit(
                  fontSize: 24,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Text(
                personList[index].job.title,
                // style: TextStyle(color: Colors.white, fontSize: 20),
                style: GoogleFonts.kanit(
                  fontSize: 24,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Image.asset(personList[index].job.image, width: 50, height: 50),
            ],
          ),
        );
      },
    );
  }
}
