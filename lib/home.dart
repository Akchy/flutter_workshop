import 'package:flutter/material.dart';
import 'students.dart';
import 'convert.dart';
// Added students import
import 'increment.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi there VJCET'),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Text('hi there'),
              ),
              Text('Dec 1'),

              MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Convert()
                      )
                  );
                },
                child: Text('Convert'),
              ),

              MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Students()
                      )
                  );
                },
                child: Text('Convert'),
              ),

              // Navigator for Increment
              MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Increment()
                      )
                  );
                },
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
