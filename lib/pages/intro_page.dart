import 'package:find_rooms_app/intro_screens/intro_screen1.dart';
import 'package:find_rooms_app/intro_screens/intro_screen2.dart';
import 'package:find_rooms_app/intro_screens/intro_screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login_page.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  //page controller
  final introKey = GlobalKey<IntroductionScreenState>();

  //to keep track if we are on the last page or not
  bool lastPage=false;


  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
     const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      pages: [
        
                PageViewModel(
                  title: "Search Rooms",
                  body: "Find Best Rooms Of Your",
                  image: _buildImage('lib/images/person1.jpg'),
          decoration: pageDecoration,
                 
                 ),
                 PageViewModel(
                  title: "Search Rooms",
                  body: "Find Best Rooms Of Your",
                  image: _buildImage('lib/images/person2.jpg'),
          decoration: pageDecoration,
                 
                 ),
                 PageViewModel(
                  title: "Search Rooms",
                  body: "Find Best Rooms Of Your",
                  image: _buildImage('lib/images/person3.png'),
          decoration: pageDecoration,
                 
                 ),
      ],
      showSkipButton: false,
      done: Text("Login Now"),
      next: Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone:()=>_onIntroEnd(context),

                
      // showNextButton: false,

      curve: Curves.fastLinearToSlowEaseIn,
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      
      // body: Stack(
      //   children:[
        //   PageView(
        //     controller: _controller,
        //     onPageChanged: (index){
        //       setState(() {
        //         lastPage=(index==2);
        //       });
        //     },
        //   children: [
        //     // IntroPage1(),
        //     IntroPage2(),
        //     IntroPage3()
        //   ],
        // ),
      //   //dot indicators
      //   lastPage?
      //   Container(
      //      alignment: Alignment(0,0.85),

      //     child: GestureDetector(
      //           onTap:(){
      //             Navigator.push(context, 
      //             MaterialPageRoute(builder: (context)
      //             {
      //               return LoginPage();
      //             })
      //             );

      //           } ,
      //           child: Text("Login Now")),
      //   ):

      //   Container(
      //     alignment: Alignment(0,0.85),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         //skip
      //         GestureDetector(
      //           onTap:(){
      //             _controller.jumpToPage(2);

      //           } ,
      //           child: Text("skip")),

      //         //dot indicators
      //         SmoothPageIndicator(controller: _controller,count: 3,),


      //         //next
              
              
      //           GestureDetector(
      //           onTap:(){
      //             _controller.nextPage(
      //               duration:Duration(milliseconds: 500) ,
      //                curve: Curves.easeIn);

      //           } ,
      //           child: Text("Next"))

      //         //register page
      //       ],
      //     ),
      //   ),
      //   ]
      // ),
      
    );
    
  }
}
Widget _buildImage(String assetName, [double width = 350]) {
    return Center(child: Image.asset(assetName, width: width,alignment: Alignment.center,),);

    
  }

  