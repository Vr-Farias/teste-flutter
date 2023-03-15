import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final ThemeData tema = ThemeData();


    return MaterialApp(
      theme: tema.copyWith(
      colorScheme: tema.colorScheme.copyWith(
        primary: Colors.red.shade100,
        secondary: Colors.blue,
      ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home TiTa Therapy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              fixedSize: const Size(220, 70),
              textStyle: const TextStyle(
                fontSize: 25,
              ),
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageAzul()),
              );
            },
            child: const Text ('Azul'),
          ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size(220, 70),
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageVermelho()),
                );
              },
              child: const Text ('Vermelho'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                fixedSize: const Size(220, 70),
                textStyle: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),

              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageAmarelo()),
                );
              },
              child: const Text ('Amarelo'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade900,
                fixedSize: const Size(220, 70),
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageVerde()),
                );
              },
              child: const Text ('Verde'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageAzul extends StatefulWidget {
  @override
  _PageAzulState createState() => _PageAzulState();
}

class _PageAzulState extends State<PageAzul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Azul'),
        backgroundColor: Colors.red.shade100,
      ),
      body: Center(
        child:
        Image.network(
            'https://cdn130.picsart.com/293465474038201.jpg?type=webp&to=crop&r=256'
        ),
      ),
    );
  }
}

class PageVermelho extends StatefulWidget {
  @override
  _PageVermelhoState createState() => _PageVermelhoState();
}

class _PageVermelhoState extends State<PageVermelho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Vermelho'),
        backgroundColor: Colors.red.shade100,
      ),
      body: Center(
        child:
          Image.network(
    'https://assets.community.lomography.com/41/336f98a1cf4602f381d0a035d1da310cc3630c/256x256x1.jpg?auth=11614c36e19410f75c3917d884bfedad46821859'
    ),
      ),
    );
  }
}

class PageAmarelo extends StatefulWidget {
  @override
  _PageAmareloState createState() => _PageAmareloState();
}

class _PageAmareloState extends State<PageAmarelo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Amarelo'),
        backgroundColor: Colors.red.shade100,
      ),
      body: Center(
        child:
        Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfV7wDDw9iecJew1JCrkqjoXk9Sx8oCeRSJg&usqp=CAU'
        ),
      ),
    );
  }
}

class PageVerde extends StatefulWidget {
  @override
  _PageVerdeState createState() => _PageVerdeState();
}

class _PageVerdeState extends State<PageVerde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        title: const Text('Verde'),
        backgroundColor: Colors.red.shade100,
      ),
      body: Center(
        child:
        Image.network(
            'https://c-cl.cdn.smule.com/rs-s-sf-3/arr/69/19/45e4ddcd-d4cb-4dc0-b6c7-1339d83ebd4c.jpg'
        ),
      ),
    );
  }
}