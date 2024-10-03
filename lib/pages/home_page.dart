import 'package:flutter/material.dart';
import '../pages/note_page.dart';
import '../models/note.dart';
import '../components/item_note.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'FunkoPOP',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: figures.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(figure: figures[index]),
                ),
              );
            },
            child: Item(figure: figures[index]),
          );
        },
      ),
    );
  }
}