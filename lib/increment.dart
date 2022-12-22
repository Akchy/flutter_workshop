import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Increment extends StatefulWidget {
  const Increment({Key? key}) : super(key: key);

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {

  var prefs;
  var num=0;

  void checkSharedPref()async{
    // Obtain shared preferences.
    prefs = await SharedPreferences.getInstance();
    setState(() {
      num = prefs.getInt('counter');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkSharedPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/snowflake.png'),
            Text('You have pushed this button $num number of times'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          setState(() {
            num++;
            print(num);
          });
          await prefs.setInt('counter', num);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
