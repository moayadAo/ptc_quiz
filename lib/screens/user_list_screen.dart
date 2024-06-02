import 'package:flutter/material.dart';
import 'package:model_quiz/question3/user.dart';
import 'package:model_quiz/question3/user_cache.dart';
import 'package:model_quiz/screens/user_detaild_screen.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<int> _userIds = [];

  @override
  void initState() {
    super.initState();
    _loadUserIds();
  }

  Future<void> _loadUserIds() async {
    final userIds = await CacheUser().loadUserIds();
    setState(() {
      _userIds = userIds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: _userIds.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('User ${_userIds[index]}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      UserDetailsScreen(userId: _userIds[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
