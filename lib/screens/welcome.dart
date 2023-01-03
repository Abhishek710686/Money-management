import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee_intern_task/screens/login.dart';
import 'package:ieee_intern_task/screens/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            const Text('Welcome',
             style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),
            ),
            const SizedBox(height: 15,),
            const Text('A Penny Saved is a Penny Earned !',
                style: TextStyle(
                  color: Color.fromARGB(255, 109, 109, 109),
                  fontSize: 17
                ),
              ),
              const SizedBox(height: 450,
                child: Image(
                  image: AssetImage('assets/welcom_screen.jpg')),
              ),
              SizedBox(height: 65, width: 350,
              child: 
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Loginpage())));
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                //elevation: MaterialStateProperty.all(15),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: const BorderSide(color: Colors.black)
                ))
              ), 
              child: const Text('Login',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),)),
              const SizedBox(height: 18,),
              SizedBox(height: 65, width: 350,
              child: 
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>  SignUp())));
              },
              style: ButtonStyle(
                //elevation: MaterialStateProperty.all(15),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: const BorderSide(color: Colors.black)
                ))
              ), 
              child: const Text('Sign Up',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),)),
          ],),
        ),
      ),
    );
  }
}