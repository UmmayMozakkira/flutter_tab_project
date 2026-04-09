import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidable',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'GeeksForGeeks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var items = List<int>.generate(20, (index) => index + 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Slidable(
            key: const ValueKey(0),
            startActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                // Define a delete action
                SlidableAction(
                  onPressed: (BuildContext context) {
                    setState(() {
                      items.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Item deleted'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                // Define a share action
                SlidableAction(
                  onPressed: (BuildContext context) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Item shared'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                // Define an archive action
                SlidableAction(
                  flex: 2,
                  onPressed: (BuildContext context) {
                    setState(() {
                      items.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Item archived'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  backgroundColor: Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Archive',
                ),
                SlidableAction(
                  onPressed: (BuildContext context) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Item Saved'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  backgroundColor: Color(0xFF0392CF),
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
              ],
            ),
            child: ListTile(title: Text('Item ${items[index]}  ')),
          );
        },
      ),
    );
  }
}