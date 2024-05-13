import 'package:flutter/material.dart';

class GridListView extends StatelessWidget {
  final List<Map<String, dynamic>> wordData = [
    {'word': 'Flutter', 'description': 'UI toolkit for building natively compiled applications'},
    {'word': 'Dart', 'description': 'Programming language optimized for building web and mobile apps'},
    {'word': 'Widget', 'description': 'UI component in Flutter'},
    {'word': 'Grid', 'description': 'Layout structure in Flutter for arranging items in a grid'},
    {'word': 'List', 'description': 'Collection of items arranged in a linear fashion'},
    {'word': 'View', 'description': 'Visual representation of UI elements'},
    {'word': 'Example', 'description': 'A demonstration or sample of how something works'},
    {'word': 'OpenAI', 'description': 'Research lab focusing on artificial intelligence'},
    {'word': 'ChatGPT', 'description': 'Conversational AI model developed by OpenAI'},
    {'word': 'Android', 'description': 'Mobile operating system developed by Google'},
    {'word': 'iOS', 'description': 'Mobile operating system developed by Apple'},
    {'word': 'Mobile', 'description': 'Relating to handheld devices such as smartphones and tablets'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid List View'),
      ),
      body: _buildGridListView(context),
    );
  }

  Widget _buildGridListView(BuildContext context) {
    // Calculate the cross axis count based on screen size
    final double screenWidth = MediaQuery.of(context).size.width;
    int itemCountPerRow = (screenWidth / 150).floor(); // Calculate based on item width (150)
    itemCountPerRow = itemCountPerRow.clamp(1, 7); // Limit the count between 1 and 7

    return GridView.builder(
      itemCount: wordData.length, // Total number of items in the grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: itemCountPerRow,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        // Replace this with your actual item widget
        return Card(
          child: Padding(padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(wordData[index]['word']),
              SizedBox(height: 8,),
              Text(wordData[index]['description'])
            ],
          ),)
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GridListView(),
  ));
}
