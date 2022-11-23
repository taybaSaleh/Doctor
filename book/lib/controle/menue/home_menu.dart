import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class home_menu extends StatefulWidget {

  String? titel;
  home_menu({Key? key,this.titel}) : super(key: key);

  @override
  State<home_menu> createState() => _home_menuState();
}

class _home_menuState extends State<home_menu> {

  List<String >image=[

    "images/do.jpg",
    "images/IMG-20221117-WA0003.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titel!,style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Color(0xff0a192c),
      ),
      body: Container(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              Container(
              height: 250,
              margin: EdgeInsets.only(top: 50),
              child: CarouselSlider.builder(
                itemCount: 2,
                options: CarouselOptions(
                  height: 300,
                  scrollPhysics: PageScrollPhysics(),
                  autoPlay: true,
                  autoPlayInterval:const Duration(seconds: 5),
                  aspectRatio:2,
                  viewportFraction:1,
                  pageSnapping: false,
                  autoPlayCurve:Curves.linearToEaseOut,
                  enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIdx) {
                  return Container(
                    //width: MediaQuery.of(context).size.width+100,
                    width: 1000,
                    height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black),
                    color: Colors.blueGrey,
                  ),

                    child: Center(


                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                              size: Size.square(600), // Image radius
                              child:Container(
                                //  width: 50,
                                // height: 50,
                                //  child: Icon(Icons.bedroom_baby_rounded,color: ksc_color,size: 40,),
                                child: Image.asset(image[index],width: 1000,height: 200,fit: BoxFit.fill,),
                                //child: Image.asset("images/baby_icon.png",width: 50,height: 50,fit: BoxFit.fill,)
                              )
                          ),
                        )

                    ),
                  );
                },
              )),
             SizedBox(height: 50,),
            Container(

              child:  Text("الدكاتره المتوفرين",style: TextStyle(color: Colors.black,fontSize: 30),),
            ),

             Container(

             child:SingleChildScrollView (
               scrollDirection: Axis.horizontal,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   homePageCard1(Colors.black38,"عبدالله الشرعبي","+96773","images/IMG-20221117-WA0000.jpg","4",(){}),
                   homePageCard1(Colors.black38,"فازع الانسي","+967771829087","images/IMG-20221117-WA0001.jpg","4",(){}),

                 ],
               ),
             ),
             ),
              SizedBox(height: 50,),
              Container(

                child:SingleChildScrollView (
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      homePageCard1(Colors.black38,"فاروق","+967735446795","images/IMG-20221117-WA0002.jpg","4",(){}),
                      homePageCard1(Colors.black38,"عبدالكريم زبيبه","+967771277014","images/do.jpg","4",(){}),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }




  Widget homePageCard1(Color color,String name,String phone,String image,String yere
      ,Function k) {
    double _w = MediaQuery.of(context).size.width;
    return InkWell(
      //highlightColor: Colors.transparent,
      //  splashColor: Colors.transparent,
      onTap: () {
        HapticFeedback.lightImpact();

      },
      child:  Container(
        height: 300,
        width: 400,
        margin: EdgeInsets.only(left: 10),
        child: Stack(
          ///mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //  margin: EdgeInsets.only(top: 10,left: 10),
              // padding: EdgeInsets.all(10),
              height: 300,

              width:400,
              decoration: BoxDecoration(
                color: color.withOpacity(.2),
                border: Border.all(color: Color(0xff0a192c)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff0a192c).withAlpha(89),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(1),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1),topRight: Radius.circular(1),),
                child: SizedBox.fromSize(
                    size: Size.square(90), // Image radius
                    child: Image.asset(image,width: 100,height: 50,fit: BoxFit.fill,)
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // margin: EdgeInsets.only(left: 10),
                // padding: EdgeInsets.all(10),
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color:  Color(0xff0a192c).withOpacity(.7),
                    border: Border.all(color: Color(0xff0a192c)),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: kpri_color,
                    //     offset: const Offset(
                    //       5.0,
                    //       5.0,
                    //     ),
                    //     blurRadius: 10.0,
                    //     spreadRadius: 2.0,
                    //   ), //BoxShadow
                    //   BoxShadow(
                    //     color: ksc_color,
                    //     offset: const Offset(0.0, 0.0),
                    //     blurRadius: 0.0,
                    //     spreadRadius: 0.0,
                    //   ),
                    // ],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(1),bottomLeft: Radius.circular(1),)
                ),
                child:
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            "اسم الدكتور",
                            // maxLines: 2,
                            softWrap: true,
                            //  overflow: TextOverflow.clip,
                            // textWidthBasis: TextWidthBasis.longestLine,

                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,

                                fontFamily: "Reem"
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            name,
                            // maxLines: 2,
                            softWrap: true,
                            //  overflow: TextOverflow.clip,
                            // textWidthBasis: TextWidthBasis.longestLine,

                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,

                                fontFamily: "Reem"
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            "رقم الهاتف",
                            // maxLines: 2,
                            softWrap: true,
                            //  overflow: TextOverflow.clip,
                            // textWidthBasis: TextWidthBasis.longestLine,

                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,

                                fontFamily: "Reem"
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            phone,
                            // maxLines: 2,
                            softWrap: true,
                            //  overflow: TextOverflow.clip,
                            // textWidthBasis: TextWidthBasis.longestLine,

                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,

                                fontFamily: "Reem"
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            "عدد سنين الخبره",
                            // maxLines: 2,
                            softWrap: true,
                            //  overflow: TextOverflow.clip,
                            // textWidthBasis: TextWidthBasis.longestLine,

                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,

                                fontFamily: "Reem"
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            yere,
                            // maxLines: 2,
                            softWrap: true,
                            //  overflow: TextOverflow.clip,
                            // textWidthBasis: TextWidthBasis.longestLine,

                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,

                                fontFamily: "Reem"
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
