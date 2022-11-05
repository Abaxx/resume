import 'package:flutter/material.dart';
import 'package:resume/AboutMe.dart';
import 'package:resume/CanDo.dart';
import 'package:resume/Experience.dart';

import 'ContactMe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'My Resume'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  portrait(){
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/abass.jpg', height: 200, width: 200,),
            SizedBox(height: 5,),
            const Text('Mr: Akande Abass', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25),),
            SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutMe()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: Text('About Me', style: const TextStyle(
                  color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
            SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Experience()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: const Text('Experience',
                style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CanDo()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: Text('What I can do',
                style: const TextStyle(
                    color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactMe()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: Text('Contact Me', style: const TextStyle(
                  color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
          ],
        ),
      ),
    );
  }

  landscape(){
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              'assets/images/abass.jpg', height: 200, width: 200,),
            const SizedBox(height: 5,),
            const Text('Mr: Akande Abass', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25),),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutMe()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: const Text('About Me', style: TextStyle(
                  color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
            SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Experience()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: const Text('Experience',
                style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CanDo()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: const Text('What I can do',
                style: TextStyle(
                    color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactMe()));
            },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 100,
              height: 30,
              color: Colors.blue,
              child: const Text('Contact Me', style: TextStyle(
                  color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    if(MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),),
        body: portrait(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
          },
          label: const Text('Switch Theme'),
          backgroundColor: Colors.deepPurple,
          //icon: const Icon(Icons.brightness_high),
        ), // This trailing comma makes a
      );
    }else {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(child:landscape(),),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
          },
          label: const Text('Switch Theme'),
          backgroundColor: Colors.deepPurple,
          //icon: const Icon(Icons.brightness_high),
        ), // This trailing comma makes auto-formatting nicer for build methods.
     );
    }
  }
}

