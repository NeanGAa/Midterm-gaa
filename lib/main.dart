import 'package:flutter/material.dart';

void main() {
  runApp(MyMidtermExamApp());
}

class MyMidtermExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nean_MidtermExam',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> items = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Pineapple',
    'Strawberry',
    'Mango',
    'Blueberry',
    'Watermelon',
    'Kiwi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YourName_MidtermExam'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(
            itemName: items[index],
          );
        },
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  final String itemName;

  ItemCard({required this.itemName});

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isAdded ? Colors.green[100] : Colors.white,
      child: ListTile(
        title: Text(widget.itemName),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                print('Details of ${widget.itemName}');
              },
              child: Text('Details'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isAdded = !isAdded;
                });
              },
              child: Text(isAdded ? 'Added' : 'Add'),
            ),
          ],
        ),
      ),
    );
  }
}