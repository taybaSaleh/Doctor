import 'package:flutter/material.dart';

class m7 extends StatefulWidget {

  String? titel;
  m7({Key? key,this.titel}) : super(key: key);

  @override
  State<m7> createState() => _home_menuState();
}

class _home_menuState extends State<m7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titel!,style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Color(0xff0a192c),
      ),
      body: Container(

        child: Center(
          child: ListView(
            children: [
              Container(
                //width: MediaQuery.of(context).size.width+100,
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueGrey,
                ),

                child: Center(


                    child: Image.asset("images/IMG-20221117-WA0003.jpg",
                        fit: BoxFit.fill,
                       // width: MediaQuery.of(context).size.width+300
                    )

                ),
              ),
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

                              Text("الارشاد 2",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                   // Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                  //  Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 2",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    // Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    //  Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 2",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    // Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    //  Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 2",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    // Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    //  Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 2",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    // Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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

                              Text("الارشاد 1",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
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
                                    //  Get.bottomSheet(Container(width: 200,height: 200,color: Colors.blueGrey,));

                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Text("شوف اراء الناس")],
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
            ],
          ),
        ),
      ),
    );
  }
}
