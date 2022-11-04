
import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);


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
              Text('Experience', style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),),
              SizedBox(height: 10,),
              Text('03/2021 - 06/2021', style: TextStyle(fontSize: 20),),
              SizedBox(height: 5,),
              Text(
                'ZURI INGRESSIVE TRAINING; collaborated on bloodfinder app development.',
                style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Text('08/2021 - 11/2021', style: TextStyle(fontSize: 20),),
              SizedBox(height: 5,),
              Text('HNG8 intern; collaborated on zuri chart app development.',
                style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Text('05/2022 - current', style: TextStyle(fontSize: 20),),
              SizedBox(height: 5,),
              Text('Intership at Flux Technology.',
                style: TextStyle(fontSize: 15),),
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
                  Text('Experience', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                  SizedBox(height: 10,),
                  Text('03/2021 - 06/2021', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 5,),
                  Text(
                    'ZURI INGRESSIVE TRAINING; collaborated on bloodfinder app development.',
                    style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10,),
                  Text('08/2021 - 11/2021', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 5,),
                  Text('HNG8 intern; collaborated on zuri chart app development.',
                    style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10,),
                  Text('05/2022 - current', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 5,),
                  Text('Intership at Flux Technology.',
                    style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
          ),
      );
    }
  }
}