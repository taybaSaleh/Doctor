

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class user_model{

  late String email='';

   bool? isblocked=true;
   bool?   admin;

tojson(){

  return {

    "email": email,
    "admin": admin,

    "isblocked":isblocked
  };
}
convertjson(Map<dynamic,dynamic>d){


  email=d["email"];
  admin=d["admin"];

  isblocked=d['isblocked'];
}
}