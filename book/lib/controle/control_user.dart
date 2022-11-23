import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../model/user_model.dart';


class control_user extends GetxController{

  var user=user_model().obs;
  var key=''.obs;

  @override
  void onInit()async {
    SharedPreferences shard=await SharedPreferences.getInstance();
    String ?dd=shard.getString("key");
    print("ddddddddddddddddddddddddddddddddd");
    print(dd);
    if(dd!=null)
    {
      key.value=dd;
   await get_my_data(dd);

    }

  }

   get_my_data(String id) async{


    DocumentReference reference=FirebaseFirestore.instance.collection("Users").doc(id);


  var d= await reference.get();

   user.value.convertjson ( d.data() as Map<dynamic,dynamic>);
    user.update;

return true;
 }


   Future<user_model> get_data(String id) async{


    DocumentReference reference=FirebaseFirestore.instance.collection("Users").doc(id);

    user_model? h;
    await reference.get().then((value) {
      // print(value);
       h=new user_model();
      h!. convertjson(value.data() as Map<dynamic,dynamic>);


    }).catchError((e){
      print("error--------------------------------------");
    })

    ;
    return h!;
  }


void add_user(String id,Map<dynamic,dynamic>data){

  CollectionReference R=FirebaseFirestore.instance.collection("Users");


    R.doc(id).set(data);




}

update_token(String id,String token){
  CollectionReference R=FirebaseFirestore.instance.collection("Users");

  R.doc(id).set({
    "token":token
  },SetOptions(merge: true));

}
// ignore: non_constant_identifier_names
Future<bool> check_the_user(String id )async{

    bool flag=false;
    DocumentReference RR=FirebaseFirestore.instance.collection("Users").doc(id);
    await RR.get().then((value) => {

      if(value.exists){
        flag=true
      }

    });
    return flag;
}

 v(String id)async{
    return await check_the_user(id);
}
void my_online(bool state,bool ispramiry)
async{
  SharedPreferences shard=await SharedPreferences.getInstance();
  String ?dd=shard.getString("key");

  CollectionReference R=FirebaseFirestore.instance.collection("Users");

  R.doc(dd).set({

    "online": state,
    "online_date": Timestamp.now(),
    "ispramiry":ispramiry
  }, SetOptions(merge: true));


}
   get_id_doc_online_firend(String id_firend)
  async{

    CollectionReference R=FirebaseFirestore.instance.collection("Users");
    R.doc(id_firend).set({
      // "user_id": dd,
      "online": false,
      // "online_date": Timestamp.now(),
      "ispramiry":false
    }, SetOptions(merge: true));



  }
  void change_my_online()
  async{
    SharedPreferences shard=await SharedPreferences.getInstance();
    String ?dd=shard.getString("key");
    CollectionReference R=FirebaseFirestore.instance.collection("Users");
    String? idd;

    R.doc(dd).snapshots().listen((data){
      print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"+data["online"].toString());

      if(data["online"]==false&&data["ispramiry"]==false){
      R.doc(dd).set({

        "online":true,
        "online_date":Timestamp.now(),
        "ispramiry":true
      },SetOptions(merge: true));}
    });


  }



  
  
}