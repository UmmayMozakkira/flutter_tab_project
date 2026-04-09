import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
	return MaterialApp(
  debugShowCheckedModeBanner: false,
	home: Scaffold(
		appBar: AppBar(
		title: const Text('GeeksforGeeks'),
		backgroundColor: Colors.green,
    foregroundColor: Colors.white,
		),
		body: const SafeArea(
		child: Center(
			child: Text(
			'Welcome to GFG!',
			style: TextStyle(
				fontSize: 40.0,
				color: Colors.green,
				fontWeight: FontWeight.bold), 
			),
		),
		),
	),
	);
}
}