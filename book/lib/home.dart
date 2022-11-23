import 'dart:math';

import 'package:book/controle/menue/m5.dart';
import 'package:book/controle/menue/m7.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

import 'controle/menue/home_menu.dart';
import 'controle/menue/m2.dart';
import 'controle/menue/m3.dart';
import 'controle/menue/m4.dart';
import 'controle/menue/m6.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
//     return Scaffold(
//       // drawer: Drawer(
//       //
//       //   child: Scaffold(
//       //
//       //
//       //     body: Center(
//       //       child: ListView(
//       //         children: [
//       //         Container(height: 200,),
//       //           SizedBox(height: 50,),
//       //           list_mune("تحدث مع الطبيب",(){}),
//       //           list_mune("احجز موعد مع الطبيب",(){}),
//       //           list_mune("اساله واجابات",(){}),
//       //           list_mune("ارشادات",(){}),
//       //           list_mune("فديوهات وثائقيه",(){}),
//       //           list_mune("دليل",(){}),
//       //
//       //         ],
//       //       ),
//       //     ),
//       //   ),
//       //
//       //
//       // ),
//
//       appBar: AppBar(
//         backgroundColor: Colors.white38,
//
//         title: Text("مرحبا بكم في تطبيقنا",style: TextStyle(color: Colors.black38,fontSize: 20,fontWeight: FontWeight.bold),),
//         centerTitle: true,
//
//       ),
//       body:Stack(
//         children: [
//
//           Align(
//
//             alignment: Alignment.centerLeft,
//             child: Container(
// width: 200,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.black38
//                 )
//               ),
//
//               child:Center(
//                 child: ListView(
//                   children: [
//
//                     SizedBox(height: 100,),
//                     list_mune("الرئسيه",(){}),
//                     list_mune("تحدث مع الطبيب",(){}),
//                     list_mune("احجز موعد مع الطبيب",(){}),
//                     list_mune("اساله واجابات",(){}),
//                     list_mune("ارشادات",(){}),
//                     list_mune("فديوهات وثائقيه",(){}),
//                     list_mune("pdf خاصه بعلم النفس",(){}),
//
//                   ],
//                 ),
//               ) ,
//             ),
//           ),
//           Container(
//
//           )
//
//         ],
//       ),
//
//
//     );
  return SidebarPage();
  }


  list_mune(String text,var fun){


    return  InkWell(
      onTap: fun,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue
        ),
        child: Center(child: Text(text)),

      ),
    );
  }
}
class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  List<CollapsibleItem>? _items;
  String? _headline;
  AssetImage _avatarImg = AssetImage('assets/man.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items!.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'الرئسيه',
        icon: Icons.home_outlined,
        onPressed: () => setState(() => _headline = 'الرئسيه'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'تحدث مع الطبيب',
        icon: Icons.chat,
        onPressed: () => setState(() => _headline = 'تحدث مع الطبيب'),
      ),
      CollapsibleItem(
        text: 'احجز موعد مع الطبيب',
        icon: Icons.access_alarm,
        onPressed: () => setState(() => _headline = 'احجز موعد مع الطبيب'),
      ),
      CollapsibleItem(
        text: 'اساله واجابات',
        icon: Icons.search,
        onPressed: () => setState(() => _headline = 'اساله واجابات'),
      ),
      CollapsibleItem(
        text: 'ارشادات',
        icon: Icons.info_outline,
        onPressed: () => setState(() => _headline = 'ارشادات'),
      ),
      CollapsibleItem(
        text: 'فديوهات',
        icon: Icons.video_camera_back_rounded,
        onPressed: () => setState(() => _headline = 'فديوهات'),
      ),
      CollapsibleItem(
        text: 'pdf خاصه بعلم النفس',
        icon: Icons.picture_as_pdf,
        onPressed: () => setState(() => _headline = 'pdf خاصه بعلم النفس'),
      ),

      // CollapsibleItem(
      //   text: 'Alarm',
      //   icon: Icons.access_alarm,
      //   onPressed: () => setState(() => _headline = 'Alarm'),
      // ),
      // CollapsibleItem(
      //   text: 'Eco',
      //   icon: Icons.eco,
      //   onPressed: () => setState(() => _headline = 'Eco'),
      // ),
      // CollapsibleItem(
      //   text: 'Event',
      //   icon: Icons.event,
      //   onPressed: () => setState(() => _headline = 'Event'),
      // ),
      // CollapsibleItem(
      //   text: 'Email',
      //   icon: Icons.email,
      //   onPressed: () => setState(() => _headline = 'Email'),
      // ),
      // CollapsibleItem(
      //   text: 'Face',
      //   icon: Icons.face,
      //   onPressed: () => setState(() => _headline = 'Face'),
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: MediaQuery.of(context).size.width <= 800,
        items: _items!,
       // avatarImg: _avatarImg,

        title: 'اسم المريض',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
        },
        body: _body(size, context),
        backgroundColor: Color(0xff0a192c),
        selectedTextColor: Colors.black,

        textStyle: TextStyle(fontSize: 15 ,color: Colors.black, decoration: TextDecoration.none),
        titleStyle: TextStyle(
            fontSize: 20,
          decoration: TextDecoration.none

          ),
        toggleTitleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: [
          // BoxShadow(
          //   color: Colors.indigo,
          //   blurRadius: 20,
          //   spreadRadius: 0.01,
          //   offset: Offset(3, 3),
          // ),
          // BoxShadow(
          //   color: Colors.green,
          //   blurRadius: 50,
          //   spreadRadius: 0.01,
          //   offset: Offset(3, 3),
          // ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {




    switch(_headline){


      case 'الرئسيه':{

        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: home_menu(titel: _headline,),
        );


      }break;
      case 'تحدث مع الطبيب':{
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: m2(titel: _headline,),
        );

      }break;
      case 'احجز موعد مع الطبيب':{

        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: m3(titel: _headline,),
        );


      }break;
      case 'اساله واجابات':{

        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: m4(titel: _headline,),
        );


      }break;
      case 'فديوهات':{

        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: m5(titel: _headline,),
        );

      }break;

      case  'ارشادات':{

        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: m7(titel: _headline,),
        );

      }break;
      case 'pdf خاصه بعلم النفس':{
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white38,
          child: m6(titel: _headline,),
        );
      }break;
    }
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white38,
      child: home_menu(titel: _headline,),
    );
  }
}