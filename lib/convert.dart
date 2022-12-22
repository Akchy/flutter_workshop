import 'package:flutter/material.dart';

class Convert extends StatefulWidget {
  const Convert({Key? key}) : super(key: key);

  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {

  TextEditingController usdController = TextEditingController();
  TextEditingController inrController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          inputField(usdController, (val){
            if(val.isNotEmpty)
              inrController.text = (double.parse(val)*80).toString() ;
          }, 'USD'),
          inputField(inrController, (val){
            if(val.isNotEmpty)
              usdController.text = (double.parse(val)/80).toString() ;
          }, 'INR'),
          MaterialButton(
            color: Colors.black,
            onPressed: (){
              usdController.text = '';
              inrController.text = '';
            },
            child: Text('Reset',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget inputField(controller,func,lab){
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        onChanged: func,
        decoration: InputDecoration(
            label: Text('$lab'),
            hintText: '500',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }

}
