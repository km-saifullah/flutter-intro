import 'package:flutter/material.dart';

const String imgUrl =
    'https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageSection(),
              navigationSection(),
              textSection(),
              buttonSection()
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton buttonSection() {
    return ElevatedButton(
        onPressed: () {
          print('Button Pressed');
        },
        child: const Text('Click Me'));
  }

  Column textSection() {
    return const Column(
      children: [
        Text('Hello World',
            textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50)),
        Text('Hello World',
            textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50)),
        Text('Hello World',
            textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50)),
        Text('Hello World',
            textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50)),
      ],
    );
  }

  Card navigationSection() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 10,
      color: Colors.amber,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.indigo,
              size: 50,
            ),
            Icon(
              Icons.navigation,
              color: Colors.red,
              size: 50,
            ),
            Icon(
              Icons.share,
              color: Colors.green,
              size: 50,
            )
          ],
        ),
      ),
    );
  }

  Image imageSection() {
    return Image.network(
      imgUrl,
      width: double.infinity,
      height: 250,
    );
  }
}
