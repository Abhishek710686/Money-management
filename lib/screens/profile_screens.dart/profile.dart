import 'package:flutter/material.dart';
import 'package:ieee_intern_task/screens/login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(child: Column(children: [
        Stack(children: [
          Container(
          color: Colors.blue,
          height: 200,
          width: 400
      ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 75, 0, 0),
            child:Center(
              child: Text('Profile',style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
            )
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(340,10 , 0, 0),
            child: CircleAvatar(backgroundImage: AssetImage('assets/loginavatar.png') ,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 170, 0, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                height: 60,
                width: 240,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 60, 103, 181),
                  borderRadius: BorderRadius.all(Radius.circular(60))
                ),
                child: Center(
                  child: TextButton(onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: ((context) => Loginpage())), (route) => false);
                  }, child: Text('Sign out',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),)
                ),
              ),
              
            ],),
          )
          
        ],
      ),
      
      Expanded(
        child: Container(
          color: Color.fromARGB(255, 244, 238, 238),
          child: Stack(
            children: [
           Padding(
             padding: const EdgeInsets.fromLTRB(10,10,10,0),
             child: ListView.separated(itemBuilder: ((context, index) {
      return const SizedBox(height: 95,
        child: Card(elevation: 5,
        margin: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: ListTile(
                title: Text('About Us',style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 64, 71, 197)
                ) ,),

            ),
          ),
        ),
      );
    }), 
    separatorBuilder: (context,index){
      return SizedBox(height: 5,);
    }, 
    itemCount: 1),
           )
            ],
          ),
        ),
      )
     ],
    )
   ),
  );
  }
}
 