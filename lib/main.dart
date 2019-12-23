import 'package:flutter/material.dart';
import 'childPage/Index_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: MaterialApp(
        title: '优炫软件',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightGreen        
        ),
        home: IndexPage()
      ),
    );
  }
}


