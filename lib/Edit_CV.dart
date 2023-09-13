
import 'package:flutter/material.dart';
import 'package:resume/main.dart';

class EditCV extends StatefulWidget {
  String fullName;
  String slackUsername;
  String githubHandle;
  String personalBio;
  String experience;
  EditCV({Key? key,required this.fullName,required this.slackUsername,required this.githubHandle,required this.personalBio,required this.experience})
      : super(key: key);
  @override
  State<EditCV> createState() => _EditCVState();
}
class _EditCVState extends State<EditCV> {
  late TextEditingController name;
  late TextEditingController slackName;
  late TextEditingController handle;
  late TextEditingController personal;
  late TextEditingController exp;

  @override
  void initState() {
    name = TextEditingController(text: widget.fullName);
    slackName = TextEditingController(text: widget.slackUsername);
    handle = TextEditingController(text: widget.githubHandle);
    personal = TextEditingController(text: widget.personalBio);
    exp = TextEditingController(text: widget.experience);
    super.initState();
  }
  Widget portrait(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                labelText: 'FullName'
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: slackName,
              decoration: const InputDecoration(
                  labelText: 'Slack Name'
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: handle,
              decoration: const InputDecoration(
                  labelText: 'GitHub Handle'
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: personal,
              decoration: const InputDecoration(
                  labelText: 'Personal Bio'
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: exp,
              decoration: const InputDecoration(
                  labelText: 'Experience'
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return MyHomePage(title: 'My CV',
                    fullName: name.text.trim(),
                    slackUsername: slackName.text.trim(),
                    githubHandle: handle.text.trim(),
                    personalBio: personal.text.trim(),
                    experience: exp.text.trim(),
                  );
                }));
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              minWidth: 150,
              height: 30,
              color: Colors.blue,
              child: const Text('Back', style: TextStyle(
                  color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      )
    );
  }

  landscape(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: name,
                decoration: const InputDecoration(
                    labelText: 'FullName'
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: slackName,
                decoration: const InputDecoration(
                    labelText: 'Slack Name'
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: handle,
                decoration: const InputDecoration(
                    labelText: 'GitHub Handle'
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: personal,
                decoration: const InputDecoration(
                    labelText: 'Personal Bio'
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: exp,
                decoration: const InputDecoration(
                    labelText: 'Experience'
                ),
              ),
              const SizedBox(height: 10,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return MyHomePage(title: 'My CV',
                      fullName: name.text.trim(),
                      slackUsername: slackName.text.trim(),
                      githubHandle: handle.text.trim(),
                      personalBio: personal.text.trim(),
                      experience: exp.text.trim(),
                    );
                  }));
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                minWidth: 150,
                height: 30,
                color: Colors.blue,
                child: const Text('Back', style: TextStyle(
                    color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),
              ),
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return MyHomePage(title: 'My CV',
                fullName: name.text.trim(),
                slackUsername: slackName.text.trim(),
                githubHandle: handle.text.trim(),
                personalBio: personal.text.trim(),
                experience: exp.text.trim(),
              );
            }));
          },),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Edit'),
        ),
        body: portrait(context),
      );
    }else {
      return Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return MyHomePage(title: 'My CV',
                    fullName: name.text.trim(),
                    slackUsername: slackName.text.trim(),
                    githubHandle: handle.text.trim(),
                    personalBio: personal.text.trim(),
                    experience: exp.text.trim(),
                  );
                }));
              },
            ),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('Edit'),
          ),
          body: SingleChildScrollView(
            child: landscape(context),
          ),
      );
    }
  }
}