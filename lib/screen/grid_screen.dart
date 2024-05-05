import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {

  List<String> name = ['B', 'I', 'J', 'A', 'Y', 'A'];
  List<int> clickCounts = List.filled(6, 0);
  List<Color> buttonColors = List.filled(6, Colors.blue);
  List<bool> showButtons = List.filled(6, true);

  void onPressed(int index) {
    setState(() {
      clickCounts[index]++;
      if (clickCounts[index] == 1) {
        // Change the color to red after the first click
        buttonColors[index] = Colors.red;
      } else if (clickCounts[index] == 2) {
        // After the second click, set click count to 0 and hide the button
        buttonColors[index] = Colors.blue;
        name.removeAt(index);
        showButtons[index] = false;
        clickCounts[index] = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Screen'),
      ),
      body: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(name.length, (index) {
            return Center(
              child:  SizedBox(
                width: 150, // Adjust the width according to your preference
                height: 150, // Adjust the height according to your preference
                child: ElevatedButton(
                  onPressed: () {
                    onPressed(index);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), backgroundColor: buttonColors[index]
                  ),
                  child: Text(
                    name[index],
                    style: const TextStyle(
                        fontSize: 50, color: Colors.black), // Adjust the style as desired
                  ),
                ),
              ),
              // Hides the button when showButtons[index] is false
            );
          }),
      ),
    );
  }
}
