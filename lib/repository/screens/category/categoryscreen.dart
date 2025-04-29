import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocery=[
    {
      "img":"vegetables.png","text":"Vegetables & \nFruits"
    },
    {
      "img":"atta.png","text":"Atta, Dal &\nRice"
    },
    {
      "img":"ghee.png","text":"Oil, Ghee &\nMasala"
    },
    {
      "img":"dairy.png","text":"Dairy, Bread &\nMilk"
    },
    {
      "img":"bakery.png","text":"Biscuits &\nBakery"
    }
  ];
  var kitchen=[
    {
      "img":"dryfruits.png","text":"Dry Fruits &\nCereals"
    },
    {
      "img":"kitchen.png","text":"Kitchen &\nAppliances"
    },
    {
      "img":"tea.png","text":"Tea &\nCoffees"
    },
    {
      "img":"icecream.png","text":"Ice Creams &\nmuch more"
    },
    {
      "img":"noodles.png","text":"Noodles &\nPacket Food"
    }
  ];
  var snacks=[
    {
      "img":"chips.png","text":"Chips &\nNamkeens"
    },
    {
      "img":"sweets.png","text":"Sweets &\nChocalates"
    },
    {
      "img":"drinks.png","text":"Drinks &\nJuices"
    },
    {
      "img":"sauces.png","text":"Sauces &\nSpreads"
    },
    {
      "img":"cosmetics.png","text":"Beauty &\nCosmetics"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "16 minutes",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "HOME ",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        UiHelper.CustomText(
                            text: "- Shrey, Shamli (U.P)",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          SizedBox(height: 15,),
          Row(children: [
            SizedBox(width: 20,),

            UiHelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold")
          ],),
          SizedBox(height: 20,),
           Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context,index){
                  return
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB)
                          ),
                          child: UiHelper.CustomImage(img: grocery[index]["img"].toString()),
                          ),
                        ),
                  UiHelper.CustomText(text: grocery[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.w400, fontsize: 10),
                      ],
                    );

                },itemCount: grocery.length,scrollDirection: Axis.horizontal,),
              ),
            ),
          SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(itemBuilder: (context,index){
                return
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)
                        ),
                        child: UiHelper.CustomImage(img:kitchen[index]["img"].toString()),
                        ),
                      ),
                UiHelper.CustomText(text: kitchen[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.w400, fontsize: 10),
                    ],
                  );

              },itemCount: kitchen.length,scrollDirection: Axis.horizontal,),
            ),
          ),








        ],
      ),
    );
  }
}
