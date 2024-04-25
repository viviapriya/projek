import 'package:flutter/material.dart';
import 'package:projek/tugas1.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Screen"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
          // ini nagivasi
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_)=>tugas(),
              ),
          );
          }, child: Text('Kalkulator')),
          ElevatedButton(onPressed: () {
          // ini nagivasi
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_)=>tugas(),
              ),
            );},
            child: Text("Tugas")
          ),
        ],
      ),
    );
  }
}