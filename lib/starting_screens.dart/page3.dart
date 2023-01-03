import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Image(image: AssetImage('assets/pag3.jpg')),
            SizedBox(height: 10,),
            Text('Management',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
            SizedBox(height: 35,),
            Text('Personalized insights and guidance\n to help you stay on\n top of your finances.',
                  style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 109, 109, 109)),textAlign:TextAlign.center,),
          ],
        ),
      ),
    );
  }
}