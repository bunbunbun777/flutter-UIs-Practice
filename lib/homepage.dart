
import 'package:flutter/material.dart';
import 'package:ui_practice/lamb_shop/consts.dart';
import 'package:ui_practice/lamb_shop/home_lamb.dart';
import 'package:ui_practice/lighting_product/const_lighting.dart';
import 'package:ui_practice/lighting_product/home_lighting.dart';
import 'package:ui_practice/others/const.dart';
import 'package:ui_practice/others/currancy_post.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Designs'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: lambBackColor,
              child: Text('Lamb shop'),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeLamb()));
                }),
            MaterialButton(
                color: productBackColors[0],
                child: Text('Lighting Product'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeLighting()));
                }),
            MaterialButton(
                color: pDark,
                child: Text('Currancy Post'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CurrancyHome()));
                }),
          ],
        ),
      ),
    );
  }
}
