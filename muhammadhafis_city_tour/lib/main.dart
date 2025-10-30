import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'HomeScreen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get Images => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title,
          style: TextStyle(
            color: Colors.white,),
        ),),
        body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Images.images(ImagesAsset,
                  width: 150,
                  height: 300,

                ),
              ),],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Explore, Enjoy, Experience",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
                Row(
                  children: [Flexible(child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                "Explore the charm of our city's hidden gems and embark on a journey tp discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today",
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  ),
                  ))],
                ),
            SizedBox(height: 16),
            Row(
              children: [Flexible(child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("gambar4.png",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill)
                  ],

                )
              ))],
            ),



          ],
        ),

          ),
        );

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
  },
},
