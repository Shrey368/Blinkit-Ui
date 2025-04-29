import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [

          Stack(children: [
            Container(
              height: 160,
              width: double.infinity,
              color: Color(0XFFF7CB45),
              child: Column(
                children: [
                  SizedBox(height: 30,),

                  Row(children: [
                    SizedBox(width: 20,),
                    UiHelper.CustomText(text: "Blinkit in", color: Colors.black, fontweight: FontWeight.bold, fontsize: 12,fontfamily: "bold")
                  ],),
                  Row(children: [
                    SizedBox(width: 20,),
                    UiHelper.CustomText(text: "16 minutes", color: Colors.black, fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold")
                  ],),
                  Row(children: [
                    SizedBox(width: 20,),
                    UiHelper.CustomText(text: "HOME ", color: Colors.black, fontweight: FontWeight.bold, fontsize: 12),
                    UiHelper.CustomText(text: "- Sujal Dave, Ratanada, Jodhpur (Raj)", color: Colors.black, fontweight: FontWeight.w400, fontsize: 12)
                  ],)
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 90,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(Icons.person,color: Colors.black,size: 20,),
              ),
            ),
            Positioned(
                bottom: 15,
                left: 20,
                child: UiHelper.CustomTextField(controller: searchController))
          ],),
          SizedBox(height: 10,),
          UiHelper.CustomImage(img: "shoppingcart.png"),
          SizedBox(height: 10,),
          UiHelper.CustomText(text: "Reordering will be easy", color: Colors.black, fontweight: FontWeight.bold, fontsize: 16,fontfamily: "bold"),
          UiHelper.CustomText(text: "Items you order will show up here so you can buy.", color: Colors.black, fontweight: FontWeight.w500, fontsize: 10),
          UiHelper.CustomText(text: "them again easily", color: Colors.black, fontweight: FontWeight.w500, fontsize: 10),
          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 10,),
            UiHelper.CustomText(text: "Bestsellers", color: Colors.black, fontweight: FontWeight.bold, fontsize: 16)
          ],),

        ],)
    );
  }
}
