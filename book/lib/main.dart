
import 'package:book/singn_in.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:location/location.dart' as k;
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core_web/firebase_core_web.dart' as d;
import 'controle/control_user.dart';
import 'home.dart';

void main() async{
 await WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp(

    options: FirebaseOptions( apiKey: "AIzaSyBSlxFQ7K-9LCK5F-EbyTB2QHCp69Ymits", appId: "1:724254110833:web:671feba35deb80730017d0", messagingSenderId: "724254110833", projectId: "book-eaa0a", ),


 );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({Key? key}) {

 }

  // This widget is the root of your application.

 control_user con=Get.put(control_user(),permanent: false);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  control_user con =Get.find();




  Future<String > get_key()async{





    SharedPreferences shard=await SharedPreferences.getInstance();
    String ?dd=shard.getString("key");


    print("dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd");
    print(dd);
    return dd!;
  }
  @override
  void initState() {


  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.




    return  FutureBuilder(future: get_key(),builder: (context,data){


      if(data.connectionState==ConnectionState.waiting)
        return Center(child: CircularProgressIndicator(),);

      if(!data.hasData)
        return singn_in();

      String key=data.data as String ;
      return  FutureBuilder(future: con.get_my_data(con.key.value),builder: (context,data){

        if(data.connectionState==ConnectionState.waiting)
          Scaffold(
            body: Center(child: CircularProgressIndicator(),),
          );
        return home();
      },);


    });


  }
}
