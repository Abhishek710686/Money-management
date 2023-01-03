import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee_intern_task/starting_screens.dart/pageview.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Image(image: AssetImage('assets/page1.jpg')),
            SizedBox(height: 35,),
            Text('Be easier to manage \n your own money',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
            SizedBox(height: 35,),
            Text('Just using your phone, you can \nmanage all your details and\n cashflow more easily.',
                  style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 109, 109, 109)),textAlign:TextAlign.center,),
          ],
        ),
      ),
    );
 
     
    
  }
}