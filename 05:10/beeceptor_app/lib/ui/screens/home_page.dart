import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 34),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: TextButton.icon(
          style: ButtonStyle(
            fixedSize: WidgetStatePropertyAll(Size(250, 60)),
            backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
          ),
          onPressed: () => context.go('/posts'),
          label: Text(
            'Ver Posts',
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          icon: Icon(Icons.read_more, size: 32, color: Colors.white),
        ),
      ),
    );
  }
}
