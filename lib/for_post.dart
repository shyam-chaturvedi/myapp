import 'package:firstapp/my_insta_app_icons.dart';
import 'package:flutter/material.dart';
class Post extends StatefulWidget{

 Post({required this.post,required this.profile,required this.title,required this.subtitle,required this.liked});
  final String title,subtitle,post,profile;
  final liked ;
  @override
  _Post createState()=> _Post(titlE:title,subtitlE:subtitle,posT:post,profilE:profile,Liked:liked);
}
class _Post extends State<Post>{
  _Post({required this.posT,required this.profilE,required this.titlE,required this.subtitlE,required this.Liked});
  final String titlE,subtitlE,posT,profilE;
   final Liked;
  @override
  Widget build(BuildContext context){
   return 
   Container(
     child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         ListTile(
                leading: Container(
                           width: 35,
                           height: 35,
                           margin:EdgeInsets.all(2) ,
                            decoration: BoxDecoration(
                              shape:BoxShape.circle,
                              image: DecorationImage(
                               image: AssetImage(profilE),
                               fit:BoxFit.fill,
                            ),
                            ),
                           ),
                title: Text(titlE),
                subtitle:Text(subtitlE),
              ),
                Container(
                 width:double.infinity,
                 height:400,
                 decoration:BoxDecoration(
                   image:DecorationImage(
                     fit: BoxFit.fill,
                     image:AssetImage(posT),
                   ),
                 ),
                 ),
          Row(
          children: [
            IconButton(
              onPressed: (){
                setState( (){
                if(!Liked.contains(posT)){
                  Liked.add(posT);
                   final snackbar= SnackBar(
                  backgroundColor: Colors.white,
                  content:Text('You Have Liked the Post',
                            style:TextStyle(
                                  color:Colors.blue,
                            )
                          ),
                  duration:Duration(milliseconds: 3000),);//creating instance of class.
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);}
                else{Liked.remove(posT);}
                });
               
          },
              
             icon: Icon( 
               (Liked.contains(posT)) ? Icons.favorite:Icons.favorite_border,
                color: (Liked.contains(posT)) ? Colors.red : null,
             )
             ),
             IconButton(
              onPressed: (){},
             icon: Icon(MyInstaApp.comment_special
             ),
             ),
             IconButton(
              onPressed: (){},
             icon: Icon(MyInstaApp.paper_plane_empty)
             ),
          ],
        )
       
       
       ],
     ),
     ),
   );
       
  }
}