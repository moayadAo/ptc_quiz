import 'package:flutter/material.dart';
import 'package:model_quiz/question3/user.dart';
import 'package:model_quiz/question3/user_cache.dart';

class UserDetailsScreen extends StatelessWidget {
  final int userId;

  UserDetailsScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    final user = CacheUser().getUserById(userId);

    if (user == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('User Details'),
        ),
        body: Center(
          child: Text('User not found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${user.firstName} ${user.lastName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(user.image),
            SizedBox(height: 16),
            Text('Name: ${user.firstName} ${user.lastName}'),
            SizedBox(height: 8),
            Text('About: ${user.about}'),
          ],
        ),
      ),
    );
  }
}
