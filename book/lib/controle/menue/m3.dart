import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class m3 extends StatefulWidget {

  String? titel;
  m3({Key? key,this.titel}) : super(key: key);

  @override
  State<m3> createState() => _home_menuState();
}

class _home_menuState extends State<m3> {

  Color kPrimaryColor=Color(0xff0a192c);
  Color kbackgroundcolor=Color(0xff78899d);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titel!,style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Color(0xff0a192c),
      ),
      body: ListView(
        children: [
      Container(
      //margin: EdgeInsets.only(bottom: 20,left: 0,top: 20),
      alignment: Alignment.center,

      child:SingleChildScrollView (
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homePageCard1(Colors.black38,"عبدالله الشرعبي","","images/IMG-20221117-WA0000.jpg","4",(){}),
            homePageCard1(Colors.black38,"فازع الانسي","","images/IMG-20221117-WA0001.jpg","4",(){}),

            homePageCard1(Colors.black38,"فاروق","","images/IMG-20221117-WA0002.jpg","4",(){}),
            homePageCard1(Colors.black38,"عبدالكريم زبيبه","","images/do.jpg","4",(){}),

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
    ),
          Container(
            padding: EdgeInsets.only(top: 50),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))

            ),
            height: MediaQuery.of(context).size.height*0.92,

            // padding: EdgeInsets.only(top: 40,right: 5,left: 5),
            child: Form(
              //key: d,
              child: Container(
                child: SingleChildScrollView(

                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [


                      SizedBox(height: 20,),
                      Align(alignment: Alignment.center,
                          child:  Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'العامه',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  // color: Color(0xffA9DED8),
                                  color:kPrimaryColor
                              ),
                            ),
                          )),
                      SizedBox(height: 0,),
                      Container(
                        // height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.all(20),
                        // margin: EdgeInsets.only(left: 200),
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor.withAlpha(89),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: kbackgroundcolor,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],

                          color:kbackgroundcolor,
                          // border: Border.all(color: Colors.black)
                        ),

                        child: Column(

                          children: [


                            Container(
                              height: MediaQuery.of(context).size.height / 14,
                              width:  MediaQuery.of(context).size.width/ 1.22,
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),

                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextFormField(
                                //   controller: location_controler,
                                style: TextStyle(color: Colors.black.withOpacity(.9)),
                                obscureText: false,
                                keyboardType: true ? TextInputType.emailAddress : TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: kPrimaryColor,
                                    //  color: kWarninngColor,
                                  ),
                                  border: InputBorder.none,
                                  hintMaxLines: 1,
                                  contentPadding:
                                  const EdgeInsets.only(left: 14.0, bottom: 0.0, top: 20.0),

                                  hintText: "اسم المريض  ...",
                                  // enabled: false,
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                ),



                                validator: (value) {
                                  // final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                                  // final regExp = RegExp(pattern);
                                  //
                                  // if (value!.isEmpty) {
                                  //   return 'Enter an email';
                                  // } else if (!regExp.hasMatch(value)) {
                                  //   return 'Enter a valid email';
                                  // } else {
                                  //   return null;
                                  // }
                                },

                                //onSaved: (value) => setState(() => location_controler.text = value!),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: MediaQuery.of(context).size.height / 14,
                              width:  MediaQuery.of(context).size.width/ 1.22,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),

                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextFormField(
                                //controller:email_controler,

                                enabled: true,
                                //  controller: phonecontroller,
                                style: TextStyle(color: Colors.black.withOpacity(.9)),
                                obscureText: false,
                                keyboardType: true ? TextInputType.phone : TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_android,
                                    color: kPrimaryColor,
                                    //  color: kWarninngColor,
                                  ),
                                  border: InputBorder.none,
                                  hintMaxLines: 1,
                                  contentPadding:
                                  const EdgeInsets.only(left: 14.0, bottom: 0.0, top: 20.0),

                                  hintText: "اسم الدكتور المعالج ...",

                                  // enabled: false,

                                  hintStyle: TextStyle(
                                    fontSize: 14,

                                    color: Colors.black.withOpacity(.5),
                                  ),
                                ),


                                validator: (value) {
                                  if (value!.length < 4||value.isEmpty||value.contains("  ")) {
                                    return 'Enter at least 4 characters';
                                  } else {
                                    return null;
                                  }
                                },
                                //maxLength: 30,
                                // onSaved: (value) => setState(() => email_controler.text = value!),
                              ),
                            ),
                          ],
                        ),

                      ),
                      Align(alignment: Alignment.center,
                          child:  Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'بيانات الاتصال',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  // color: Color(0xffA9DED8),
                                  color:kPrimaryColor
                              ),
                            ),
                          )),

                      Container(
                        // height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.all(20),
                       // margin: EdgeInsets.only(left: 200),
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor.withAlpha(89),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: kbackgroundcolor,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],

                          color:kbackgroundcolor,
                          // border: Border.all(color: Colors.black)
                        ),

                        child: Column(

                          children: [


                            Container(
                              height: MediaQuery.of(context).size.height / 14,
                              width:  MediaQuery.of(context).size.width/ 1.22,
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),

                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextFormField(
                             //   controller: location_controler,
                                style: TextStyle(color: Colors.black.withOpacity(.9)),
                                obscureText: false,
                                keyboardType: true ? TextInputType.emailAddress : TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: kPrimaryColor,
                                    //  color: kWarninngColor,
                                  ),
                                  border: InputBorder.none,
                                  hintMaxLines: 1,
                                  contentPadding:
                                  const EdgeInsets.only(left: 14.0, bottom: 0.0, top: 20.0),

                                  hintText: "الايميل ...",
                                  // enabled: false,
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                ),



                                validator: (value) {
                                  // final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                                  // final regExp = RegExp(pattern);
                                  //
                                  // if (value!.isEmpty) {
                                  //   return 'Enter an email';
                                  // } else if (!regExp.hasMatch(value)) {
                                  //   return 'Enter a valid email';
                                  // } else {
                                  //   return null;
                                  // }
                                },

                                //onSaved: (value) => setState(() => location_controler.text = value!),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: MediaQuery.of(context).size.height / 14,
                              width:  MediaQuery.of(context).size.width/ 1.22,
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
                              decoration: BoxDecoration(
                                color: Color(0xfffafafa),

                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextFormField(
                                //controller:email_controler,

                                enabled: true,
                                //  controller: phonecontroller,
                                style: TextStyle(color: Colors.black.withOpacity(.9)),
                                obscureText: false,
                                keyboardType: true ? TextInputType.phone : TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_android,
                                    color: kPrimaryColor,
                                    //  color: kWarninngColor,
                                  ),
                                  border: InputBorder.none,
                                  hintMaxLines: 1,
                                  contentPadding:
                                  const EdgeInsets.only(left: 14.0, bottom: 0.0, top: 20.0),

                                  hintText: "رقم الهاتف ...",
                                  // enabled: false,
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                ),


                                validator: (value) {
                                  if (value!.length < 4||value.isEmpty||value.contains("  ")) {
                                    return 'Enter at least 4 characters';
                                  } else {
                                    return null;
                                  }
                                },
                                //maxLength: 30,
                               // onSaved: (value) => setState(() => email_controler.text = value!),
                              ),
                            ),
                          ],
                        ),

                      ),

                      SizedBox(height: 10,),
                      Container(height: 50,width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                        ),

                        child: ElevatedButton(style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all(kPrimaryColor),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blueGrey)
                                )
                            )

                        ),onPressed: ()async{


                        },child: Text("ارسال",style: TextStyle(color: Colors.white,fontSize: 15),),),
                      )
                      // TextButton(onPressed: ()async{
                      //
                      //   CustomProgressDialog progressDialog = CustomProgressDialog(context,blur: 10,dismissable: false);
                      //   //progressDialog.dismissable=false;
                      //   ///You can set Loading Widget using this function
                      //   progressDialog.setLoadingWidget(
                      //
                      //
                      //
                      //       CircularProgressIndicator()
                      //
                      //
                      //   );
                      //
                      //   // progressDialog.show();
                      //
                      //   isLocationServiceEnabled();
                      //   formstate.currentState!.save();
                      //   bool f=formstate.currentState!.validate();
                      //   String? toke=   await  FirebaseMessaging.instance.getToken();
                      //
                      //   Position my_location= await _determinePosition();
                      //   GeoPoint my_geopoint=GeoPoint(my_location.latitude,my_location.longitude);
                      //   data_user.last_location=my_geopoint;
                      //
                      //
                      //   List<Placemark> placemarker =
                      //   await  placemarkFromCoordinates(
                      //       my_geopoint.latitude, my_geopoint.longitude, localeIdentifier: "en");
                      //   data_user.last_city=placemarker[0].administrativeArea!;
                      //   if(f){
                      //
                      //     if(id.length>0){
                      //       data_user.token=toke!;
                      //       user_cont.add_user(id, data_user.tojson());
                      //
                      //
                      //     }else{
                      //       data_user.token=toke!;
                      //       SharedPreferences shard=await SharedPreferences.getInstance();
                      //       String? h=shard.getString("key");
                      //       user_cont.add_user(h!, data_user.tojson());
                      //
                      //
                      //
                      //     }
                      //     // progressDialog.dismiss();
                      //     Get.offAll(page_tap());
                      //
                      //   }
                      //
                      //
                      // }, child: Icon(Icons.arrow_forward))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
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
                      Icon(Icons.phone,color: Colors.blue,)
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
