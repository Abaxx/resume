
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:resume/AboutMe.dart';
import 'package:resume/Skills.dart';
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
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme,darkTheme)=> MaterialApp(
          title: 'Flutter Demo',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
         home: const MyHomePage(title: 'My Resume'),),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  portrait(){
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/abass.jpg', height: 200, width: 200,),
            SizedBox(height: 5,),
            const Text('Akande Abass', style: TextStyle(
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
              child: Text('My Skills',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              'assets/images/abass.jpg', height: 200, width: 200,),
            const SizedBox(height: 5,),
            const Text('Akande Abass', style: TextStyle(
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
              child: const Text('My Skills',
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
          leading: const BackButton(),
          actions: [IconButton(onPressed: (){
            AdaptiveTheme.of(context).toggleThemeMode();
          }, icon: const Icon(Icons.brightness_high_sharp))],
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),),
        body: portrait(),
      );
    }else {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          actions: [IconButton(onPressed: (){
            AdaptiveTheme.of(context).toggleThemeMode();
          }, icon: const Icon(Icons.brightness_high))],
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(child:landscape(),),
     );
    }
  }
}

