import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee_intern_task/screens/welcome.dart';
import 'package:ieee_intern_task/starting_screens.dart/page1.dart';
import 'package:ieee_intern_task/starting_screens.dart/page2.dart';
import 'package:ieee_intern_task/starting_screens.dart/page3.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class Pageview extends StatelessWidget {
 Pageview({Key? key}) : super(key: key);

  final ValueNotifier<int> _selectedindex = ValueNotifier(0);
  final PageController _controller = PageController();

  final _pages = [
    const Page1(),
    const Page2(),
    const Page3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: Padding(
         padding: const EdgeInsets.fromLTRB(0, 0, 0, 110),
         child: FloatingActionButton(onPressed: (){
                nextpage(context);
         },child: Icon(Icons.arrow_forward),backgroundColor: Colors.red,),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
           ValueListenableBuilder(valueListenable:_selectedindex , 
        builder: (BuildContext context, int updatedindex, Widget?_){
          return PageView.builder(itemBuilder: (BuildContext context, int index){
            return _pages[updatedindex];
        },
        itemCount: _pages.length,
        controller: _controller,
        onPageChanged: (value){
          _selectedindex.value = value;
        },
           );
          }
         ),
         Padding(
           padding: const EdgeInsets.fromLTRB(0, 710, 0,0),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              TextButton(onPressed: (){
                previouspage();
              }, child: const Text('Back',style: TextStyle(fontSize: 20,),)),
            Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CirclePageIndicator(
                itemCount: _pages.length,
                currentPageNotifier: _selectedindex,
                 ),
               
             ),
               
               TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Welcome())));
               }, child: const Text('Skip',style: TextStyle(fontSize: 20,),))
             ],
           ),
         )

        ],
      )
   
  );
    
 }
 void previouspage() {

    _controller.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

void nextpage(BuildContext context) {
  if (_selectedindex.value + 1==_pages.length) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Welcome(),));
  } else {
    _controller.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }
}
}