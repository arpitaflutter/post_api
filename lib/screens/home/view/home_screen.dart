import 'package:flutter/material.dart';
import 'package:post_api/screens/home/provider/homeProvider.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtjob = TextEditingController();

  homeProvider? ht,hf;
  @override
  Widget build(BuildContext context) {

    ht = Provider.of<homeProvider>(context,listen: true);
    hf = Provider.of<homeProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: txtname,
            ),
            TextField(
              controller: txtjob,
            ),
            ElevatedButton(onPressed: () async{

              String name = txtname.text;
              String job = txtjob.text;
              String msg = await hf!.ApiCall(name, job);

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
