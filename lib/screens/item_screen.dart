import 'package:flutter/material.dart';
import 'package:model_quiz/question2/categorye.dart';

class ItemScreen extends StatefulWidget {
  List<String> items = [];
  ItemScreen({super.key});

  Categorye categorye = Categorye();

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  void initState() {
    super.initState();
    widget.items = widget.categorye.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List of Category'),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.items[index]),
          );
        },
      ),
    );
  }
}
