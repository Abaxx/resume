
import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  portrait(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
          Text('Linkedin: linkedin.com/in/akande-abass',),
          SizedBox(height: 5,),
          Text('Twitter: @quantum2030',),

        ],
      ),
    );
  }

  landscape(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
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
          Text('Linkedin: linkedin.com/in/akande-abass',),
          SizedBox(height: 5,),
          Text('Twitter: @quantum2030',),
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
        body: portrait(context),
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
            child: landscape(context),
          ),
      );
    }
  }
}