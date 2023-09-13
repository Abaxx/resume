
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:resume/Edit_CV.dart';

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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ' My CV'),);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,
    required this.title,
    this.fullName = 'Akande Abass',
    this.slackUsername = 'Abax',
    this.githubHandle = 'https://github.com/Abaxx',
    this.personalBio = 'I am graduate of University of Lagos.',
    this.experience = 'Mobile developer at flux technology for 2 years.'
  }) : super(key: key);

  String fullName;
  String slackUsername;
  String githubHandle;
  String personalBio;
  String experience;

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //var url = Uri.parse('https://github.com/Abaxx');

  Widget portrait(){
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Full Name: ",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                    TextSpan(text: widget.fullName,style: TextStyle(color: Colors.black))
                  ]
                )),
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Slack UserName: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.slackUsername,style: TextStyle(color: Colors.black))
                    ]
                )),
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "GitHub Handle: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.githubHandle,style: TextStyle(color: Colors.black))
                    ]
                )),
            const SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Personal Bio: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.personalBio,style: TextStyle(color: Colors.black))
                    ]
                )),
            const SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Experience: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.experience,style: TextStyle(color: Colors.black))
                    ]
                )),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>
                      EditCV(
                        fullName: widget.fullName,
                        slackUsername: widget.slackUsername,
                        githubHandle: widget.githubHandle,
                        personalBio: widget.personalBio,
                        experience: widget.experience,
                      )
                  ));
              },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                minWidth: 150,
                height: 30,
                color: Colors.blue,
                child: const Text('Edit', style: TextStyle(
                    color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget landscape(){
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Full Name: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.fullName,style: TextStyle(color: Colors.black))
                    ]
                )),
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Slack UserName: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.slackUsername,style: TextStyle(color: Colors.black))
                    ]
                )),
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "GitHub Handle: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.githubHandle,style: TextStyle(color: Colors.black))
                    ]
                )),
            const SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Personal Bio: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.personalBio,style: TextStyle(color: Colors.black))
                    ]
                )),
            const SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Experience: ",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                      TextSpan(text: widget.experience,style: TextStyle(color: Colors.black))
                    ]
                )),
            const SizedBox(height: 10,),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>
                      EditCV(
                        fullName: widget.fullName,
                        slackUsername: widget.slackUsername,
                        githubHandle: widget.githubHandle,
                        personalBio: widget.personalBio,
                        experience: widget.experience,
                      )
                  ));
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                minWidth: 150,
                height: 30,
                color: Colors.blue,
                child: const Text('Edit', style: TextStyle(
                    color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(widget.title),),
        body: portrait(),
      );
    }else {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(child:landscape(),),
     );
    }
  }
}

