import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class m6 extends StatefulWidget {

  String? titel;
  m6({Key? key,this.titel}) : super(key: key);

  @override
  State<m6> createState() => _home_menuState();
}

class _home_menuState extends State<m6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titel!,style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Color(0xff0a192c),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,idex){



          return

          Container(
            margin: EdgeInsets.only(bottom: 20,left: 0,top: 20),
          alignment: Alignment.center,

          child:SingleChildScrollView (
          scrollDirection: Axis.horizontal,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          homePageCard1(Colors.black38,"name","كتاب علم النفس1","images/pdf.png","4",(){}),
          homePageCard1(Colors.black38,"name","كتاب علم النفس3","images/pdf.png","4",(){}),
          homePageCard1(Colors.black38,"name","كتاب علم النفس2","images/pdf.png","4",(){}),
       //   homePageCard1(Colors.black38,"name","+967777777777","images/pdf.png","4",(){}),
        //  homePageCard1(Colors.black38,"name","+967777777777","images/pdf.png","4",(){}),
        //  homePageCard1(Colors.black38,"name","+967777777777","images/pdf.png","4",(){}),
         // homePageCard1(Colors.black38,"name","+967777777777","images/pdf.png","4",(){}),
         // homePageCard1(Colors.black38,"name","+967777777777","images/pdf.png","4",(){}),
          // homePageCard1(Colors.black38,"name","+967777777777","images/pdf.png","4",(){}),
          // homePageCard1(Colors.black38,"name","+967777777777","images/IMG-20221117-WA0001.jpg","4",(){}),

          ],
          ),
          ),
          );

        },

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
        height: 200,
        margin: EdgeInsets.only(left: 10),
        child: Stack(
          ///mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //  margin: EdgeInsets.only(top: 10,left: 10),
              // padding: EdgeInsets.all(10),
              height: 200,
              width:200,
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
                height: 40,
                width: 200,
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
                   Icon(Icons.download,color: Colors.blue,)
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
