import 'package:flutter/material.dart';

class m2 extends StatefulWidget {

  String? titel;
  m2({Key? key,this.titel}) : super(key: key);

  @override
  State<m2> createState() => _home_menuState();
}

class _home_menuState extends State<m2> {
  final kpcolor= Color(0xff0a192c);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titel!,style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Color(0xff0a192c),
      ),
      body: Stack(
        children: [
          Container(
            height:MediaQuery.of(context).size.height-200,

            margin: EdgeInsets.only(top: 50),
            child: ListView(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                       width: 300,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                              ,color: Colors.blueGrey.withOpacity(.7)
                        ),
                        child: Center(
                          child: Text("السلام عليكم ",style: TextStyle(color: Colors.black,fontSize: 30),),
                        ),
                      ),
                      CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: kpcolor,)
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 300,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                            ,color: Colors.blueGrey.withOpacity(.7)
                        ),
                        child: Center(
                          child: Text("كيفك دكتور",style: TextStyle(color: Colors.black,fontSize: 30),),
                        ),
                      ),
                      CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: kpcolor,)
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 400,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                            ,color: Colors.blueGrey.withOpacity(.7)
                        ),
                        child: Center(
                          child: Text("هل يمكنني ان اسالك بعض الاساله ",style: TextStyle(color: Colors.black,fontSize: 30),),
                        ),
                      ),
                      CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: kpcolor,)
                    ],
                  ),
                ),

                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: kpcolor,)

                      , Container(
                        height: 100,
                        width: 400,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                            ,color: kpcolor.withOpacity(.7)
                        ),
                        child: Center(
                          child: Text("وعليكم السلام ورحمه الله وبركاته ",textAlign: TextAlign.end,style: TextStyle(color: Colors.white38,fontSize: 30),),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 300,
                  height: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: kpcolor,)

                      , Container(
                        height: 300,
                        width: 400,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                            ,color: kpcolor.withOpacity(.7)
                        ),
                        child: Center(
                          child: Text("اهلا فيك اخي الكريم يمكنك طرح الاساله التي تريد \n وسيتم الاجابه عليك في اقرب وقت ممكن ",textAlign: TextAlign.end,style: TextStyle(color: Colors.white38,fontSize: 30),),
                        ),
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child:  Container(
              margin: EdgeInsets.only(bottom: 30),
              height: MediaQuery.of(context).size.height / 14,
              width:  MediaQuery.of(context).size.width/ 1.22,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
              decoration: BoxDecoration(
                color: Color(0xff071a2a),

                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                //controller:email_controler,

                enabled: true,
                //  controller: phonecontroller,
                style: TextStyle(color: Colors.white.withOpacity(.9)),
                obscureText: false,
                keyboardType: true ? TextInputType.phone : TextInputType.text,
                decoration: InputDecoration(
                  suffix: Icon(
                    Icons.send,
                    color: Colors.white,
                    //  color: kWarninngColor,
                  ),
                  border: InputBorder.none,
                  hintMaxLines: 1,
                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 30.0, top: 20.0),

                  hintText: "اكتب رسالتك ...",

                  // enabled: false,

                  hintStyle: TextStyle(
                    fontSize: 14,

                    color: Colors.white.withOpacity(.5),
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
          )
        ],
      ),
    );
  }
}
