import 'package:flutter/material.dart';
class Story extends StatefulWidget{

 Story({required this.imgName,required this.texT});
  final String imgName,texT;
  @override
  _Story createState()=> _Story(imgname:imgName,text:texT);
}
class _Story extends State<Story>{
  _Story({required this.imgname,required this.text});
  final String imgname,text;
  @override
  Widget build(BuildContext context){
  return Column(
    children: [
      Container(
                     margin: EdgeInsets.all(6),
                     padding:EdgeInsets.all(4) ,
                     decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color:Colors.pink[300],
                      ),
                      child:CircleAvatar(
                        radius:40,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(imgname),
                      ),
                      ),
                      
                   // ),
                    Text(text,
                    style:TextStyle(
                      fontSize: 12,
                    )),
    ],
  );
}
}
//'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'