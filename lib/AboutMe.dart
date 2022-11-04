
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

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
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('About Me', style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),),
              SizedBox(height: 10,),
              Text('I am graduate with B.sc in Physics from Obafemi Awolowo University, Nigeria. I have proven mathematics and programming skills, am seeking aposition as Flutter developer at your organization, to leverage organizational and programming skills to support your organization development.',),
            ],
          ),
        ),
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
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('About Me', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                  SizedBox(height: 10,),
                  Text('I am graduate with B.sc in Physics from Obafemim Awolowo University, Nigeria. I have proven mathematics and programming skills, am seeking aposition as Flutter developer at your organization, to leverage organizational and programming skills to support your organization development.',),
                ],
              ),
            ),
          ),
      );
    }
  }
}