import 'dart:ui';
import 'package:flutter/material.dart';
class About extends StatefulWidget{
  @override
  AboutState  createState()=>AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
          child: FittedBox(
            child: Text('\r\n\r\n\r\n\r\n\r\n\r\n                                            v1.0.0             \r\n\r\n\r\n\r\n\r\n           ይህ የመዝሙር ደብተር መተግበሪያ ለአጠቃቀም ቀላል\r\n      ሆኖ ለሻሎም ኳየር የተዘጋጀ ነው ፡፡ መተግበሪያውን ሲጠቀሙ\r\n    እክል ካጋጠሞት ወይም ስህተት ካገኙ እንዲሁም እንዲሻሻል\r\n   ሚፈልጉት ነገር ካለ ddaya3344@gmail.com ላይ አስተያየቶን\n  መላክ ይችላሉ ፡፡መተግበሪያውን ለኳየሩ አባል ላልሆነ ሰው ባለመስጠት\n ይተባበሩ፡፡',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
          )),
    );
  }

}
