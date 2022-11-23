import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class m5 extends StatefulWidget {

  String? titel;
  m5({Key? key,this.titel}) : super(key: key);

  @override
  State<m5> createState() => _home_menuState();
}

class _home_menuState extends State<m5> {
  late VideoPlayerController _controller;
  @override
  void initState(){


    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titel!,style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Color(0xff0a192c),
      ),
      body: Center(
        child: Container(

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 300,
                            padding: EdgeInsets.all(20),
                            width: 500,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                             //   Text("الارشاد 2",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)

                                Container(

                                    width: 600,
                                    child: Text("يمكنك مشاهده فديوهات توعويه ",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  width: 700,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                          Color(0xff4179b4),
                                        ),
                                        shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                              // side: BorderSide( color:Colors.red)
                                            ))),
                                    onPressed: () {
                                      // Get.to(MyCustomWidget());
                                      // launch('mailto: Arabguidusa@gmail.com');
                                      // Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                    },
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [ Text("الاطلاع على الكثير من الفديوهات")],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 400,
                    margin: EdgeInsets.only(top: 50),
                    child: CarouselSlider.builder(
                      itemCount: 3,
                      options: CarouselOptions(
                        height: 400,
                        scrollPhysics: PageScrollPhysics(),
                       // autoPlay: true,
                        autoPlayInterval:const Duration(seconds: 5),
                        aspectRatio:2,
                        viewportFraction:1,
                        pageSnapping: false,
                        autoPlayCurve:Curves.linearToEaseOut,
                        enlargeCenterPage: true,
                      ),
                      itemBuilder: (context, index, realIdx) {
                        return Stack(
                          children: [
                            Center(
                              child: Container(
                                //width: MediaQuery.of(context).size.width+100,
                                width: 1000,
                                height: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blueGrey,
                                ),

                                child: Center(


                                    child:_controller.value.isInitialized
                                        ? AspectRatio(
                                      aspectRatio: _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    )
                                        : Container(),

                                ),
                              ),
                            ),
                            Align(alignment: Alignment.center,

                            child: InkWell(child: Icon(Icons.not_started,size: 50,),onTap: (){


                              _controller.play();

                            },),
                            )
                          ],
                        );
                      },
                    )),

                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff0a192c),
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: BorderSide( color:Colors.red)
                            ))),
                    onPressed: () {
                      // Get.to(MyCustomWidget());
                      // launch('mailto: Arabguidusa@gmail.com');
                      //Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.arrow_forward)],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
