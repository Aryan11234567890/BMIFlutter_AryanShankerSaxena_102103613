import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/bodydata.dart';

void main()=>runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home':(context)=>const Home(),
     '/BD': (context)=>const BD(),
    '/results': (context)=> answer(),
  },
));




