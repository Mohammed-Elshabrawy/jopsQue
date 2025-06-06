
import 'package:flutter/material.dart';
class Cols {

  static const Color neutral900 = Color(0xff111827);
  static const Color neutral800 = Color(0xff1F2937);
  static const Color neutral700 = Color(0xff374151);
  static const Color neutral600 = Color(0xff4B5563);
  static const Color neutral500 = Color(0xff6B7280);
  static const Color neutral400 = Color(0xff9CA3AF);
  static const Color neutral300 = Color(0xffD1D5DB);
  static const Color neutral200 = Color(0xffE5E7EB);
  static const Color neutral100 = Color(0xffF4F4F5);

  static const Color primary900 = Color(0xff091A7A);
  static const Color primary800 = Color(0xff102693);
  static const Color primary700 = Color(0xff1939B7);
  static const Color primary600 = Color(0xff254EDB);
  static const Color primary500 = Color(0xff3366FF);
  static const Color primary400 = Color(0xff6690FF);
  static const Color primary300 = Color(0xff84A9FF);
  static const Color primary200 = Color(0xffADC8FF);
  static const Color primary100 = Color(0xffD6E4FF);

  static const Color success900 = Color(0xff0D5F09);
  static const Color success800 = Color(0xff1B720F);
  static const Color success700 = Color(0xff2E8E18);
  static const Color success600 = Color(0xff45AA23);
  static const Color success500 = Color(0xff60C631);
  static const Color success400 = Color(0xff8FDC60);
  static const Color success300 = Color(0xffB2ED82);
  static const Color success200 = Color(0xffD4F9AE);
  static const Color success100 = Color(0xffECFCD6);

  static const Color information900 = Color(0xff02337A);
  static const Color information800 = Color(0xff034893);
  static const Color information700 = Color(0xff0665B7);
  static const Color information600 = Color(0xff0887DB);
  static const Color information500 = Color(0xff0CAEFF);
  static const Color information400 = Color(0xff48CDFF);
  static const Color information300 = Color(0xff6DE1FF);
  static const Color information200 = Color(0xff9DF1FF);
  static const Color information100 = Color(0xffCEFBFF);

  static const Color warning900 = Color(0xff7A5D03);
  static const Color warning800 = Color(0xff937406);
  static const Color warning700 = Color(0xffB7930A);
  static const Color warning600 = Color(0xffDBB40E);
  static const Color warning500 = Color(0xffFFD714);
  static const Color warning400 = Color(0xffFFE44E);
  static const Color warning300 = Color(0xffFFEB72);
  static const Color warning200 = Color(0xffFFF3A1);
  static const Color warning100 = Color(0xffFFFAD0);

  static const Color danger900 = Color(0xff7A081D);
  static const Color danger800 = Color(0xff930D1B);
  static const Color danger700 = Color(0xffB71519);
  static const Color danger600 = Color(0xffDB291F);
  static const Color danger500 = Color(0xffFF472B);
  static const Color danger400 = Color(0xffFF8160);
  static const Color danger300 = Color(0xffFFA47F);
  static const Color danger200 = Color(0xffFFC9AA);
  static const Color danger100 = Color(0xffFFE7D4);

  static Color v=Color(0xffFFC9AA);


  


  

}


class HeadingTexts {
  static Color  Cho= Cols.neutral900 ;
  static setColor({ required var v}){
    Cho = v;
    return Cho;
  }
  //static late String cho;
  static GetFont({ required var v}){
  //  return this;
}


  static TextStyle heading1reguler = TextStyle(fontSize: 32,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display",color: Cho );
  static TextStyle heading2reguler = TextStyle(fontSize: 28,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle heading3reguler = TextStyle(fontSize: 24,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle heading4reguler = TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle heading5reguler = TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");

  static TextStyle heading1medium = TextStyle(fontSize: 32,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle heading2medium = TextStyle(fontSize: 28,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle heading3medium = TextStyle(fontSize: 24,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle heading4medium = TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle heading5medium = TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");

  static TextStyle heading1Bold = TextStyle(fontSize: 32,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");
  static TextStyle heading2Bold = TextStyle(fontSize: 28,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");
  static TextStyle heading3Bold = TextStyle(fontSize: 24,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");
  static TextStyle heading4Bold = TextStyle(fontSize: 20,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");
  static TextStyle heading5Bold = TextStyle(fontSize: 18,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");
  /*static  TextStyle getFont({ required String v}){
    return Cols.v;
  }*/
  /*TextStyle getFontColore(String color,String font){
    return TextStyle(color: super.getColor(color),fontFamily: font);
  }*/

}
class Texte{

  static TextStyle textLReguler = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle textLMedium = TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle textLBold = TextStyle(fontSize: 16,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");

  static TextStyle textMReguler = TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle textMMedium = TextStyle(fontSize: 14,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle textMBold = TextStyle(fontSize: 14,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");

  static TextStyle textSReguler = TextStyle(fontSize: 12,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle textSMedium = TextStyle(fontSize: 12,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle textSBold = TextStyle(fontSize: 12,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");

  static TextStyle textXSReguler = TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily:"SF Pro Display");
  static TextStyle textXSMedium = TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily:"SF Pro Display");
  static TextStyle textXSBold = TextStyle(fontSize: 15,fontWeight: FontWeight.w900,fontFamily:"SF Pro Display");
}