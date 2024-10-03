import 'package:flutter/material.dart';
import '../pages/note_page.dart';
import '../models/note.dart';
import '../components/item_note.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Вкусняшки',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: sweets.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(sweet: sweets[index]),
                ),
              );
            },
            child: Item(sweet: sweets[index]),
          );
        },
      ),
    );
  }
}