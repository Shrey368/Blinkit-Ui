import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily ?? "regular",
          color: color),
    );
  }
  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Color(0XFFFFFFFF),
        border: Border.all(
          color: Color(0XFFC5C5C5)
        )
        
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search ice cream",
          prefixIcon: Image.asset("assets/images/search.png"),
          suffixIcon: Image.asset("assets/images/mic.png")

        ),
      ),
    );
  }
  static CustomButton(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
          border: Border.all(
              color: Color(0XFF27AF34)
          ),
          borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("Add",style: TextStyle(fontSize: 8,color: Color(0XFF27AF34)),),),
    );
  }
}
