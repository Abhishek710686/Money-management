import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Image(image: AssetImage('assets/pag2.jpg')),
            SizedBox(height: 35,),
            Text('Money Saving',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
            SizedBox(height: 35,),
            Text('Be mindful spending and\n you will be more closer to\n financial freedom.',
                  style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 109, 109, 109)),textAlign:TextAlign.center,),
          ],
        ),
      ),
    );
  }
}