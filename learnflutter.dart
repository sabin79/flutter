import 'package:flutter/material.dart';

class Learnflutterpage extends StatefulWidget {
  const Learnflutterpage({super.key});

  @override
  State<Learnflutterpage> createState() => _LearnflutterpageState();
}

class _LearnflutterpageState extends State<Learnflutterpage> {
  bool isSwitch = false;
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learinig flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assects/1.jpg'),
            Divider(
              color: Colors.blueGrey,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.yellowAccent,
              width: double.infinity,
              child: Center(
                child: Text(
                  'This is my text widget',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch
                      ? Colors.green
                      : Color.fromARGB(255, 9, 88, 152)),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('text button');
              },
              child: Text('Text botton'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is row ');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: ischeck,
                onChanged: (bool? newBool) {
                  setState(() {
                    ischeck = newBool;
                  });
                }),
            Image.network(
                'https://c4.wallpaperflare.com/wallpaper/389/1001/159/albert-art-colorful-colourful-wallpaper-preview.jpg')
          ],
        ),
      ),
    );
  }
}
