import 'package:flutter/material.dart';

class Transctions extends StatelessWidget {
  const Transctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Stack(children: [
          Container(
          color: Color.fromARGB(255, 254, 128, 60),
          height: 200,
          width: 400
      ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 75, 0, 0),
            child:Center(
              child: Text('Transctions',style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 4, 40, 149)
                ),),
            )
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
                  Text('Last\nTransction',style: TextStyle(
                    color: Colors.white
                  ),),
                  Text(' \$ 100',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),)
                ],),
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
            padding: const EdgeInsets.fromLTRB(21, 25, 21, 0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 235, 235, 235),
                hintText: 'Search your transctions'
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
              leading: CircleAvatar(backgroundImage: AssetImage('assets/Traansction.jpg'),),
                title: Text('  \$ 30',style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 64, 71, 197)
                ) ,),
                trailing: Icon(Icons.delete,color: Colors.red,size: 35,),
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