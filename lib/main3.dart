import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const HelloConvexAppBar(),
      },
    );
  }
}

class HelloConvexAppBar extends StatelessWidget {
  const HelloConvexAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksForGeeks'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Welcome to Convex Bar!',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react, 
        backgroundColor: Colors.green,
        items: const [
          TabItem(icon: Icons.play_arrow, title: 'Play'),
          TabItem(icon: Icons.museum, title: 'Museum'),
          TabItem(icon: Icons.book, title: 'Book'),
        ],
        initialActiveIndex: 1, 
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}