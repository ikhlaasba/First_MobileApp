//import 'dart:ffi';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';//used for widgets
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('tatboq game',
        style: TextStyle(color: Color.fromARGB(255, 239, 151, 180)),),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  void changeImage(){
    leftImageNumber=Random().nextInt(8)+1;
    rightImageNumber=Random().nextInt(8)+1;
  }
  int leftImageNumber =1;
  int rightImageNumber =1;
 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber==rightImageNumber? 'great you won!':
          'try once again',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                      print('the left button was pressed!');
                    });
                  },
                  child: Image.asset('images/image-$leftImageNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                      print('the right button was pressed!');
                    });
                  },
                  child: Image.asset('images/image-$rightImageNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}