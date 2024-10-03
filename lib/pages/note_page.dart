import 'package:flutter/material.dart';
import '../models/note.dart';

class ProductDetailPage extends StatelessWidget {
  final Figure figure;
  final VoidCallback onDelete;

  const ProductDetailPage({super.key, required this.figure, required this.onDelete}); 
  final textFont = const TextStyle(fontSize: 20);

  void _deleteProduct(BuildContext context) {
    figures.remove(figure);
    onDelete();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(figure.name), 
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              figure.imageUrl, 
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                figure.description, 
                style: textFont,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Цена: ${figure.price} рублей', 
                style: textFont,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Бренд: ${figure.brand}', 
                style: textFont,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Серия: ${figure.series}', 
                style: textFont,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Материал: ${figure.material}', 
                style: textFont,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () => _deleteProduct(context),
                icon: const Icon(Icons.delete),
                label: const Text('Удалить фигурку'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
