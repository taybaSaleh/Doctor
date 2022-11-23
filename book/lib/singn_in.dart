


import 'package:book/page_tab.dart';
import 'package:book/sing_inn.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui' as UI;

import '../controle/control_sin.dart';
import '../controle/control_user.dart';
import 'home.dart';


class singn_in extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<singn_in> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;
  control_user con=Get.find();
  AuthenticationHelper suin= AuthenticationHelper();
  TextEditingController con_emi=TextEditingController();
  TextEditingController con_pass=TextEditingController();
  @override
  void initState() {
    super.initState();


    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    Timer(Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();









  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
  UI.TextDirection direction = UI.TextDirection.ltr;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * (animation2.value + .58),
                  left: size.width * .21,
                  child: CustomPaint(
                    painter: MyPainter(50),
                  ),
                ),
                Positioned(
                  top: size.height * .98,
                  left: size.width * .1,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value - 30),
                  ),
                ),
                Positioned(
                  top: size.height * .5,
                  left: size.width * (animation2.value + .8),
                  child: CustomPaint(
                    painter: MyPainter(30),
                  ),
                ),
                Positioned(
                  top: size.height * animation3.value,
                  left: size.width * (animation1.value + .1),
                  child: CustomPaint(
                    painter: MyPainter(60),
                  ),
                ),
                Positioned(
                  top: size.height * .1,
                  left: size.width * .8,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value),
                  ),
                ),
                Center(
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .1),
                          child: Text(
                            'نفساني number 1',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 4,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical
                          ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(

                              //  height: size.width / 8,
                                width: 300,
                                alignment: Alignment.center,
                             //   padding: EdgeInsets.only(right: size.width / 30),
                                decoration: BoxDecoration(

                                  color: Colors.black.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextField(
                                  controller: con_emi,
                                  style: TextStyle(color: Colors.black.withOpacity(.8)),
                                  cursorColor: Colors.black,

                                  keyboardType:
                                  TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.black.withOpacity(.7),
                                    ),
                                    border: InputBorder.none,
                                    hintMaxLines: 1,
                                    hintText: "البريد الاكتروني..",
                                    hintStyle:
                                    TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50,),
                              Container(

                              //  height: size.width / 8,
                                width: 300,
                                alignment: Alignment.center,
                               // padding: EdgeInsets.only(right: size.width / 30),
                                decoration: BoxDecoration(

                                  color: Colors.black.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextField(
                                  controller: con_pass,
                                  style: TextStyle(color: Colors.black.withOpacity(.8)),
                                  cursorColor: Colors.black,
                                  obscureText:true,
                                  keyboardType:
                                  TextInputType.text,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Colors.black.withOpacity(.7),
                                    ),
                                    border: InputBorder.none,
                                    hintMaxLines: 1,
                                    hintText: "كلمة المرور..",
                                    hintStyle:
                                    TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50,),


                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    component2(
                                      'تسجيل دخول',
                                      2.58,
                                          () async{


                                            await  suin.signIn(email: con_emi.text,password: con_pass.text);
                                           // print((suin.user as  User).uid);
                                            SharedPreferences shard=await SharedPreferences.getInstance();
                                            shard.setString("key", (suin.user as  User).uid);
                                            DocumentReference reference=FirebaseFirestore.instance.collection("Users").doc((suin.user as  User).uid);
                                            reference.set({

                                              "email":(suin.user as  User).email,
                                              "isblocked":true,
                                              "admin":false
                                            });
                                            //  bool ch=await con.check_the_user((suin.user as  User).uid);

                                            con.get_data((suin.user as  User).uid).then((value) {


                                              Get.to(value.isblocked==true ?home():Scaffold(


                                                body: Center(
                                                  child: Text("يرجى مواصله مدير التطبيق حتى يتم الفتح",style: TextStyle(fontSize: 20),),
                                                ),
                                              ),transition: Transition.zoom,duration: Duration(milliseconds: 1000));




                                            });

                                      },
                                    ),
                                    SizedBox(width: size.width / 20),
                                    component2(
                                      'تاكد ان كلمة المرور قويه!',
                                      2.58,
                                          () {
                                        HapticFeedback.lightImpact();
                                        Fluttertoast.showToast(
                                            msg: 'Forgotten password button pressed');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            component2(
                              'انشاء حساب جديد',
                              2,
                                  () {
                                    Get.to(singn_inn(),transition: Transition.zoom,duration: Duration(milliseconds: 1000));

                                  },
                            ),

                          ],
                        ),
                      ],
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

  Widget component1(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    Size size = MediaQuery.of(context).size;
    return Container(

      height: 100,
      width: 300,
      alignment: Alignment.center,
     // padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(

        color: Colors.black.withOpacity(.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child:Directionality(
        textDirection: direction,
        child: TextField(

          style: TextStyle(color: Colors.black.withOpacity(.8)),
          cursorColor: Colors.black,
          obscureText: isPassword,
          keyboardType:
          isEmail ? TextInputType.emailAddress : TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black.withOpacity(.7),
            ),
            border: InputBorder.none,
            hintMaxLines: 1,
            hintText: hintText,
            hintStyle:
            TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
          ),
        ),
      ),
    );
  }

  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: voidCallback,
      child: Container(
        height:70,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.05),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          string,
          style: TextStyle(color: Colors.black.withOpacity(.8)),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double radius;

  MyPainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
          colors: [
            Color(0xff210603),
            Color(0xff1c98b4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)
          .createShader(Rect.fromCircle(
        center: Offset(0, 0),
        radius: radius,
      ));

    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}