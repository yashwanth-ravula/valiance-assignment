import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String url;
  final String title;
  const DetailScreen({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Image(
              image: NetworkImage(url),
            ),
          ],
        ),
      ),
    );
  }
}
