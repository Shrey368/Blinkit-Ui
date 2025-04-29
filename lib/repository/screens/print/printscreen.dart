import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget{
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfbf0ce),
      body:Column(children: [

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
        SizedBox(height: 20,),

        UiHelper.CustomText(text: "Print Store", color: Colors.black, fontweight: FontWeight.bold, fontsize: 32),
        UiHelper.CustomText(text: "Blinkit ensures secure prints at every stage", color: Color(0XFF9C9C9C), fontweight: FontWeight.w700, fontsize: 14),
        SizedBox(height: 40,),
        Stack(
          children:[ Container(
            height: 163,
            width: 361,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white
            ),
            child: Column(
              children: [
                SizedBox(height: 5,),
                Row(children: [
                  SizedBox(width: 10,),
                  UiHelper.CustomText(text: "Documents", color: Colors.black, fontweight: FontWeight.bold, fontsize: 14)
                ],),
                SizedBox(height: 5,),
                Row(children: [
                  SizedBox(width: 10,),
                  UiHelper.CustomImage(img: "star.png"),
                  SizedBox(width: 5,),
                  UiHelper.CustomText(text:"Price starting at rs 3/page", color: Color(0XFF9C9C9C), fontweight: FontWeight.w400, fontsize: 14)
                ],),
                SizedBox(height: 5,),
                Row(children: [
                  SizedBox(width: 10,),
                  UiHelper.CustomImage(img: "star.png"),
                  SizedBox(width: 5,),
                  UiHelper.CustomText(text:"Paper quality: 70 GSM", color: Color(0XFF9C9C9C), fontweight: FontWeight.w400, fontsize: 14)
                ],),
                SizedBox(height: 5,),
                Row(children: [
                  SizedBox(width: 10,),
                  UiHelper.CustomImage(img: "star.png"),
                  SizedBox(width: 5,),
                  UiHelper.CustomText(text:"Single side prints", color: Color(0XFF9C9C9C), fontweight: FontWeight.w400, fontsize: 14)
                ],),
                SizedBox(height: 10,),
                Row(children: [
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF27AF34),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )), child: Text("Upload Files",style: TextStyle(fontSize: 13,color: Colors.white),))
          
                ],)
              ],
            ),
          ),
            Positioned(
              right: 0,
                bottom: 30,
                child:
                UiHelper.CustomImage(img: "document.png"))

      ])
      ],

      ),

      
    );
    
  }

}