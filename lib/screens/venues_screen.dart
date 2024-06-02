import 'package:flutter/material.dart';
import 'package:model_quiz/question2/venues.dart';

class VenuesScreen extends StatefulWidget {
  List<String> items = [];
  VenuesScreen({super.key});

  Venues venues = Venues();

  @override
  State<VenuesScreen> createState() => _VenuesScreenState();
}

class _VenuesScreenState extends State<VenuesScreen> {
  @override
  void initState() {
    super.initState();
    widget.items = widget.venues.getVenus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List of Venus'),
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
