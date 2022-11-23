import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class m4 extends StatefulWidget {

  String? titel;
  m4({Key? key,this.titel}) : super(key: key);

  @override
  State<m4> createState() => _home_menuState();
}

class _home_menuState extends State<m4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    itemCount: 3,
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
                          color: Colors.blueGrey,
                        ),

                        child: Center(


                            child: Image.asset("images/do.jpg",
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width+100
                            )

                        ),
                      );
                    },
                  )),
              SizedBox(height: 50,),

              // Container(
              //
              //   child:SingleChildScrollView (
              //
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //
              //         homePageCard1(Colors.black38,"name","+967777777777","images/IMG-20221117-WA0000.jpg","4",(){}),
              //         homePageCard1(Colors.black38,"name","+967777777777","images/IMG-20221117-WA0001.jpg","4",(){}),
              //
              //       ],
              //     ),
              //   ),
              // ),
              
              
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

                          Text("السوال21",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                          ,
                          Container(

                              width: 500,
                              child: Text("عدالتحية الطيبة انا حامل بالأسبوع ١٢ والحمدلله بعد عملية زراعة طبيبي الخاص بقلي يفضل عمل غرزه بالرحم لأني حامل بتوأم . بدون ما يفحص عمق الرحمه هو بالعادة بعمل للجميع التوأم لكن تفجأة من الناس بقولو مش منيح هل الغرزه منيحه لي اذا كان الرحم تمام ام لا ...؟",textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 300,
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
                                Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ Text("شوف اجابه المختصين")],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      padding: EdgeInsets.all(20),
                      width: 500,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text("السوال 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                          ,
                          Container(

                              width: 500,
                              child: Text("من بداية حملي صار معي نزيف بسيط وكل فترا يصير معي هيك لحد ماوصلت نهاية الشهر الثالث كبرت بطني كثير وبعد 12 ساعه تقريبا صار معي نزيف حاد ونزول خثرات دم قالتلي الدكتورة انو انفكاك جزئي للمشيمه في خطر انو المشيمه تتفكك بشكل كامل ويصير اجهاض شو لازم اعمل لاتجنب هالشي:",textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 300,
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
                                Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ Text("شوف اجابه المختصين")],
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

                          Text("السوال21",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                          ,
                          Container(

                              width: 500,
                              child: Text("عدالتحية الطيبة انا حامل بالأسبوع ١٢ والحمدلله بعد عملية زراعة طبيبي الخاص بقلي يفضل عمل غرزه بالرحم لأني حامل بتوأم . بدون ما يفحص عمق الرحمه هو بالعادة بعمل للجميع التوأم لكن تفجأة من الناس بقولو مش منيح هل الغرزه منيحه لي اذا كان الرحم تمام ام لا ...؟",textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 300,
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
                                Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ Text("شوف اجابه المختصين")],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      padding: EdgeInsets.all(20),
                      width: 500,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text("السوال 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                          ,
                          Container(

                              width: 500,
                              child: Text("من بداية حملي صار معي نزيف بسيط وكل فترا يصير معي هيك لحد ماوصلت نهاية الشهر الثالث كبرت بطني كثير وبعد 12 ساعه تقريبا صار معي نزيف حاد ونزول خثرات دم قالتلي الدكتورة انو انفكاك جزئي للمشيمه في خطر انو المشيمه تتفكك بشكل كامل ويصير اجهاض شو لازم اعمل لاتجنب هالشي:",textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 300,
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
                                Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ Text("شوف اجابه المختصين")],
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

                          Text("السوال21",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                          ,
                          Container(

                              width: 500,
                              child: Text("عدالتحية الطيبة انا حامل بالأسبوع ١٢ والحمدلله بعد عملية زراعة طبيبي الخاص بقلي يفضل عمل غرزه بالرحم لأني حامل بتوأم . بدون ما يفحص عمق الرحمه هو بالعادة بعمل للجميع التوأم لكن تفجأة من الناس بقولو مش منيح هل الغرزه منيحه لي اذا كان الرحم تمام ام لا ...؟",textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 300,
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
                                Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ Text("شوف اجابه المختصين")],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      padding: EdgeInsets.all(20),
                      width: 500,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text("السوال 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                          ,
                          Container(

                              width: 500,
                              child: Text("من بداية حملي صار معي نزيف بسيط وكل فترا يصير معي هيك لحد ماوصلت نهاية الشهر الثالث كبرت بطني كثير وبعد 12 ساعه تقريبا صار معي نزيف حاد ونزول خثرات دم قالتلي الدكتورة انو انفكاك جزئي للمشيمه في خطر انو المشيمه تتفكك بشكل كامل ويصير اجهاض شو لازم اعمل لاتجنب هالشي:",textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 300,
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
                                Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ Text("شوف اجابه المختصين")],
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
                    Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.handshake_rounded), Text("اسال طبيب الان")],
                    ),
                  ),
                ),
              ),

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
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          ///mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //  margin: EdgeInsets.only(top: 10,left: 10),
               padding: EdgeInsets.all(10),
              height: 300,
              width:MediaQuery.of(context).size.width/4,
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
                  Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("السوال")
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(

                          margin: EdgeInsets.only(top: 20),
                          child: Text("الاجابه"))
                  ),
                ],
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // margin: EdgeInsets.only(left: 10),
                // padding: EdgeInsets.all(10),
                height: 40,
                width: _w/4,
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
                    children: [
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
