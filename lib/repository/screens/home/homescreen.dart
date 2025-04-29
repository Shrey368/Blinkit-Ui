import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  TextEditingController searchController = TextEditingController();
  var data=[
    {
      "img":"candles.png","text":"Lights, Diyas \n& Candles"
    },
    {
      "img":"gifts.png","text":"Diwali Gifts"
    },
    {
      "img":"gifts.png","text":"Diwali Gifts"
    },
    {
      "img":"appliances.png","text":"Appliances \n& Gadgets"
    },
    {
      "img":"living.png","text":"Home \n& Living"
    }

  ];

  var category=[
    {
      "img":"glass.png","text":"Golden Glass\nWooden Lid Candle (Oudh)"
    },
    {
      "img":"gulabjamun.png","text":"Royal Gulab Jamun\nBy Bikano"
    },
    {
      "img":"bikaji.png","text":"Bikaji Bhujia"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(children: [


        Stack(children: [
          Container(
            height: 160,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              children: [
                SizedBox(height: 30,),

                Row(children: [
                  SizedBox(width: 20,),
                  UiHelper.CustomText(text: "Blinkit in", color: Colors.white, fontweight: FontWeight.bold, fontsize: 12,fontfamily: "bold")
                ],),
                Row(children: [
                  SizedBox(width: 20,),
                  UiHelper.CustomText(text: "16 minutes", color: Colors.white, fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold")
                ],),
                Row(children: [
                  SizedBox(width: 20,),
                  UiHelper.CustomText(text: "HOME ", color: Colors.white, fontweight: FontWeight.bold, fontsize: 12),
                  UiHelper.CustomText(text: "- Sujal Dave, Ratanada, Jodhpur (Raj)", color: Colors.white, fontweight: FontWeight.w400, fontsize: 12)
                ],)
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 90,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(Icons.person,color: Colors.white,size: 20,),
            ),
          ),
          Positioned(
              bottom: 15,
              left: 20,
              child: UiHelper.CustomTextField(controller: searchController))
        ],),
        Container(height: 2,width: double.infinity,color: Colors.white,),
        Container(
          height: 196,
        width: double.infinity,
          color: Color(0XFFEC0505),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                UiHelper.CustomImage(img: "cracker1.png"),
                UiHelper.CustomImage(img: "cracker2.png"),
                UiHelper.CustomText(text: "Mega Diwali Sale", color: Colors.white, fontweight: FontWeight.bold, fontsize: 20),
                UiHelper.CustomImage(img: "cracker2.png"),
                UiHelper.CustomImage(img: "cracker1.png"),
              ],),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(itemBuilder: (context,index){
                    return
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5,top: 1,bottom: 1),
                        child: Container(
                          height: 108,
                          width: 86,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFEAD3D3)
                          ),
                          child: Column(

                            children: [
                              UiHelper.CustomText(text: data[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.bold, fontsize: 10),
                              UiHelper.CustomImage(img: data[index]["img"].toString())
                            ],
                          ),
                        ),
                      );
                  },itemCount: data.length,scrollDirection: Axis.horizontal,),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(itemBuilder: (context,index){
              return Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 108,
                    width: 93,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: UiHelper.CustomImage(img: category[index]["img"].toString()),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                  child: UiHelper.CustomText(text: category[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.bold, fontsize: 8),

                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(children: [
                    UiHelper.CustomImage(img: "timer.png"),
                    UiHelper.CustomText(text: "16 MINS", color: Color(0XFF9C9C9C), fontweight: FontWeight.w500, fontsize: 10)
                  ],),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(children: [
                    UiHelper.CustomImage(img: "rupee.png"),
                    UiHelper.CustomText(text: "79", color: Colors.black, fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold")
                  ],),
                )

              ],);
            },itemCount: category.length,scrollDirection: Axis.horizontal,),
          ),
        )
      ],)
    );
  }
  
}