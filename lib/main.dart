import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'GeeksForGeeks';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0), // .symmetric যুক্ত করা হয়েছে
          height: 550.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/tom.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              const SizedBox(width: 10), 
              Container(
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/jerry.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              const SizedBox(width: 10),

              Container(
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/t j.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}