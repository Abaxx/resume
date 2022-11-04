
import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);


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
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Contact me', style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),),
              SizedBox(height: 10,),
              Text('Email Address:  abassife@gmail.com',),
              SizedBox(height: 5,),
              Text('Telephone Number: +2347061544486',),
              SizedBox(height: 5,),
              Text('Github: github.com/Abaxx?tab=repositories',),
              SizedBox(height: 5,),
              Text('Twitter: @quantum2030',),
              SizedBox(height: 5,),
              Text('Linkedin: linkedin.com/in/akande-abass',),

            ],
          ),
        ),
      );
    }else{
      return Scaffold(
          appBar: AppBar(
            leading: BackButton(),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('My Resume'),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Contact me', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                  SizedBox(height: 10,),
                  Text('Email Address:  abassife@gmail.com',),
                  SizedBox(height: 5,),
                  Text('Telephone Number: +2347061544486',),
                  SizedBox(height: 5,),
                  Text('Github: github.com/Abaxx?tab=repositories',),
                  SizedBox(height: 5,),
                  Text('Twitter: @quantum2030',),
                  SizedBox(height: 5,),
                  Text('Linkedin: linkedin.com/in/akande-abass',),
                ],
              ),
            ),
          ),
      );
    }
  }
}