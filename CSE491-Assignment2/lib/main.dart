import 'package:flutter/material.dart';
import 'package:search_app/home.dart';
import 'package:search_app/webpage.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/' : (context) => Home(),
    '/webpage' : (context) => WebPage()
  },
));

