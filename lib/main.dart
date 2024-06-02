import 'package:flutter/material.dart';
import 'package:model_quiz/question1/freezedPackage/parentCompany.dart';
import 'package:model_quiz/screens/item_screen.dart';
import 'package:model_quiz/screens/language_screen.dart';
import 'package:model_quiz/screens/user_list_screen.dart';
import 'package:model_quiz/screens/venues_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        'home': (context) => JsonTest(),
        'lazy category': (context) => ItemScreen(),
        'lazy venus': (context) => VenuesScreen(),
        'laungugae': (context) => LanguageScreen(),
        'user': (context) => UserListScreen()
      },
      home: JsonTest(),
    );
  }
}

class JsonTest extends StatefulWidget {
  JsonTest({super.key});

  @override
  State<JsonTest> createState() => _JsonTestState();
}

class _JsonTestState extends State<JsonTest> {
  Map<String, dynamic> json = {};
  ParentCompany? parentCompany;
  @override
  void initState() {
    super.initState();
    // loadJson();

    // debugPrint(parentCompany.toString());
  }

  // Future<void> loadJson() async {
  //   Map<String, dynamic> jsonData =
  //       await JsonHelper.jsonFileToMap("assest/test1.json");
  //   setState(() {
  //     parentCompany = ParentCompany.fromJson(jsonData);
  //     debugPrint('doing');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AAA'),
        actions: [],
      ),
      body: Column(
        children: [
          Center(
            // child: Text("sdadasd"),
            child: parentCompany != null
                ? Text(parentCompany.toString())
                : CircularProgressIndicator(),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'lazy category');
            },
            child: const Text('category'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'lazy venus');
            },
            child: const Text('venus'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'laungugae');
            },
            child: const Text('laungugae'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'user');
            },
            child: const Text('user'),
          )
        ],
      ),
    );
  }
}
