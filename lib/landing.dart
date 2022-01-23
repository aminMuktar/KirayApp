import 'package:flutter/material.dart';
import './widgets/slide_indicator_dots.dart';
import './widgets/slideitem.dart';
import './slide.dart';
import 'dart:async';
class Landing extends StatefulWidget{
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage=0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if(_currentPage<2)
        _currentPage++;
      else
        _currentPage=0;
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300),curve: Curves.easeIn);
    });
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children:<Widget>[
              Expanded(

                child:Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (context,i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i=0;i<slideList.length;i++)
                                if(i==_currentPage)
                                  SlideIndicatorDots(true)
                                else
                                  SlideIndicatorDots(false)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget> [
                  TextButton(
                    onPressed: () { },
                    child: Text("Signup", style: TextStyle(fontSize: 20,color: Colors.white) ,),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.indigo[900],

                    ),
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () { },
                          child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.black) ,),)
                    ],
                  )
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}