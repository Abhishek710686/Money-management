import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatelessWidget {
 Home({Key? key}) : super(key: key);

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Stack(children: [
          Container(
          color: Color.fromARGB(255, 203, 220, 248),
          height: 200,
          width: 400
      ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 45, 0, 0),
            child: Column(
              children: const [
              Text('Welcome back,',style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 118, 147, 183)
                
              ),),
              SizedBox(height: 5,),
              Text('Azarro The Dev!',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 90, 110, 171)
              ),)
            ],),
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
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                  Text('Spending\n today',style: TextStyle(
                    color: Colors.white
                  ),),
                  Text(' \$ 100',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),)
                ],),
              ),
              FloatingActionButton(onPressed: (){
               showDatePicker(context: context, 
               initialDate: _dateTime, 
               firstDate: DateTime.utc(2000), 
               lastDate: DateTime.utc(2050));
              },child: Icon(Icons.calendar_today),backgroundColor: Color.fromARGB(255, 60, 103, 181),)
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
            padding: const EdgeInsets.fromLTRB(21, 25, 21, 0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 235, 235, 235),
                hintText: 'Search your spending'
              ),
            ),
          ),
          
           Padding(
             padding: const EdgeInsets.fromLTRB(10,100,10,0),
             child: ListView.separated(itemBuilder: ((context, index) {
      return const SizedBox(height: 95,
        child: Card(elevation: 5,
        margin: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/travel.jpg'),),
                title: Text('Travel  \$ 30',style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 64, 71, 197)
                ) ,),
                trailing: Icon(Icons.upload,color: Colors.green,size: 35,),
            ),
          ),
        ),
      );
    }), 
    separatorBuilder: (context,index){
      return SizedBox(height: 5,);
    }, 
    itemCount: 21),
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