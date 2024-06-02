import 'package:flutter/material.dart';
import 'package:model_quiz/question2/language.dart';

class LanguageScreen extends StatefulWidget {
  List<String> items = [];
  LanguageScreen({super.key});

  Language language = Language();

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  void initState() {
    loadLung();
    super.initState();
  }

  Future<void> loadLung() async {
    widget.items = await widget.language.getLanguages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List of lainguage'),
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
