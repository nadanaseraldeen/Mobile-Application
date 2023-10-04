import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('Students Information',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,
          )),
          backgroundColor: Colors.grey,
          centerTitle: true,


        ),
        body: ListView(
          children: [
            Student(image: '1.jpeg', id:1, name:'Nada', major:'Information Technology',average: 60),
            Student(image: '2.jpeg', id:2, name:'Ruba', major:'Accounting',average: 60),
            Student(image: '3.jpeg', id:3, name:'Sara', major:'Computer Sciense', average: 100),
            Student(image: '4.jpeg', id:4, name:'Maya', major:'Computer Engineering',average:50)

          ],
        ),
      )
    );

  }
}

class Student extends StatelessWidget {
  final String image;
  final int id;
  final String name;
  final String major;
  final int average;

  Student({required this.image, required this.id, required this.name, required this.major, required this.average});

  @override
  Widget build(BuildContext context) {
    final starsCount = (average / 20).toInt();

    return Container(
    height: 120,
    child: Card(
    child: Row(
      children: [
      Image.asset('assets/$image'),
      Container(

    width: 100,
    height: 100,
    margin: EdgeInsets.all(4),

    ),
    Expanded(
    child: Container(
      padding: EdgeInsets.all(4),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('ID: $id', style: TextStyle(fontSize: 14)),
        Text('Name: $name', style: TextStyle(fontSize: 14)),
        Text('Majore: $major', style: TextStyle(fontSize: 14)),
        Text('Average: $average', style: TextStyle(fontSize: 14)),
      Row(

        children: List.generate(
          starsCount,
              (_) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 22.0,




              )
        )
      )
      ],
    ),

    ),
    ),
    ],
    ),
    ),
    );
  }
}
