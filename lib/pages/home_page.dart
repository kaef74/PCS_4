import 'package:flutter/material.dart';
import '../models/note.dart';
import '../components/item_note.dart';
import '../pages/note_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _priceController = TextEditingController();
  final _brandController = TextEditingController();
  final _seriesController = TextEditingController();
  final _materialController = TextEditingController();

  void _addNewFigure() {
    setState(() {
      figures.add(
        Figure(
          name: _nameController.text,
          description: _descriptionController.text,
          imageUrl: _imageUrlController.text,
          price: int.tryParse(_priceController.text) ?? 0,
          brand: _brandController.text,
          series: _seriesController.text,
          material: _materialController.text,
        ),
      );
    });

    _nameController.clear();
    _descriptionController.clear();
    _imageUrlController.clear();
    _priceController.clear();
    _brandController.clear();
    _seriesController.clear();
    _materialController.clear();
  }

  void _showAddFigureDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Добавить новую фигурку'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Название'),
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: 'Описание'),
                ),
                TextField(
                  controller: _imageUrlController,
                  decoration: const InputDecoration(labelText: 'URL изображения'),
                ),
                TextField(
                  controller: _priceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Цена'),
                ),
                TextField(
                  controller: _brandController,
                  decoration: const InputDecoration(labelText: 'Бренд'),
                ),
                TextField(
                  controller: _seriesController,
                  decoration: const InputDecoration(labelText: 'Серия'),
                ),
                TextField(
                  controller: _materialController,
                  decoration: const InputDecoration(labelText: 'Материал'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Отмена'),
            ),
            ElevatedButton(
              onPressed: () {
                _addNewFigure();
                Navigator.of(context).pop();
              },
              child: const Text('Добавить'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Фигурки FunkoPOP',
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
                  builder: (context) => ProductDetailPage(
                    figure: figures[index],
                    onDelete: () => setState(() {}), // Добавление функции удаления
                  ),
                ),
              );
            },
            child: Item(figure: figures[index]), // Предполагается, что Item может принимать Figure
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddFigureDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
