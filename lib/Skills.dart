import 'package:flutter/material.dart';

class CanDo extends StatelessWidget {
  const CanDo({Key? key}) : super(key: key);

  portrait() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('My Skills', style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),),
          SizedBox(height: 10,),
          Text('Languages: Java, Python, kotlin and Dart.',
            style: TextStyle(fontSize: 17),),
          SizedBox(height: 5,),
          Text('Frameworks: Flutter, Android studio, Appwrite and Firebase.',
            style: TextStyle(fontSize: 17),),
        ],
      ),
    );
  }

  landscape() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('My Skills', style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25),),
          SizedBox(height: 10,),
          Text('Languages: Java, Python, kotlin, Dart',
            style: TextStyle(fontSize: 20),),
          SizedBox(height: 5,),
          Text('Frameworks: Flutter, Android studio, Appwrite, Firebase.',
            style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('My Resume'),
        ),
        body: portrait(),
      );
    }else {
      return Scaffold(
          appBar: AppBar(
            leading: BackButton(),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('My Resume'),
          ),
          body: SingleChildScrollView(
            child: landscape(),
          ),
      );
    }
  }
}