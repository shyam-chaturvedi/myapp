import 'package:flutter/material.dart';
import 'package:firstapp/my_insta_app_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import'for_story.dart';
import'for_post.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of(Widget tree) your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter assignment',
      theme: ThemeData(
             primaryColor: Colors.white,
             ),
      home: MyHomePage(),
      routes:{
            '\SignUp':(context)=>SignUp (),
            '\Login':(context)=>Login (),
            '\Homescreen':(context)=> Homescreen(),
            '\Searchscreen':(context)=> Searchscreen(),
            '\Profilescreen':(context)=> Profilescreen(),
            '\DM':(context)=>DM(),
            },
    );
  }
}

class MyHomePage extends StatefulWidget {
   @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       body:
       SingleChildScrollView(
                child: Center(
          child:Column(
          children: <Widget>[
            SizedBox(height:250),
            Text('Instagram',
              style:TextStyle(
                  fontFamily: 'BeautyMountains',
                  fontSize: 40,
                  ),
            ),
            SizedBox(height:90),
            SizedBox(
              width:300,
              child: ElevatedButton(
                onPressed:(){
                Navigator.pushNamed(context,'\Login');
                }, // to the next route
                child :const Text('Log in'),
                style: ElevatedButton.styleFrom(
                  primary:Colors.blue,
                  textStyle:TextStyle(
                      color: Colors.white,
                   ) ,
                  shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              
            ),
             SizedBox(height:40),
             SizedBox(
              width:300,
              child: ElevatedButton(
                     onPressed:(){
                       Navigator.pushNamed(context,'\SignUp');
                     }, // to the next route
                     child :const Text('Sign Up',
                           style:TextStyle(
                           color:Colors.blue,
                           ),
                     ),
                     style: ElevatedButton.styleFrom(
                          primary:Colors.white,
                          shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                side:BorderSide(color:Colors.blue)
                          ),
                     ),
              ),
            ),
          ],
      ),
    ),
       ),
     
  );
}
}
class SignUp extends StatefulWidget{
   @override
   _SignUp createState() => _SignUp();
}
class _SignUp extends State<SignUp>{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      SafeArea(
              child: SingleChildScrollView(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios),
          ),
          Center(
          child:Column(
            children: <Widget>[
              SizedBox(height:30),
              Text('Instagram',
              style:TextStyle(
                //fontWeight: FontWeight.bold,
                fontFamily:'BeautyMountains',
                fontSize: 40, 
              ),
              ),
              SizedBox(height:55),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height:35,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      filled: true,
                      fillColor: Colors.grey[150],
                      border:OutlineInputBorder(),
                      hintText:'Username',
                      labelText:'Username',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   height:35,
                  child: TextField(
          
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      filled: true,
                      fillColor: Colors.grey[150],
                      border:OutlineInputBorder(),
                      hintText:'Password',
                      labelText:'Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   height:35,
                  child: TextField(
                    decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(6),
                     filled: true,
                      fillColor: Colors.grey[150],
                      border:OutlineInputBorder(),
                      hintText:' Confirm Password',
                      labelText:'Confirm Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   height:35,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      filled: true,
                      fillColor: Colors.grey[150],
                      border:OutlineInputBorder(),
                      hintText:'Password',
                      labelText:'Password',
                    ),
                  ),
                ),
              ),
             SizedBox(height: 10,),
              SizedBox(
                width:345,
                child: ElevatedButton(
                  onPressed:(){
                   Navigator.pushNamed(context,"\Homescreen");
                  }, // to the next route
                  child :const Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    primary:Colors.blue,
                    textStyle:TextStyle(
                        color: Colors.white,
                    ) ,
                    ),
                ),
              ),
              SizedBox(height:75),
              Row(children: [
                Expanded(
                  flex: 7,
                  child: Divider()),
                Expanded(
                  flex:1 ,
                    child: Text('OR',
              style:TextStyle(
               color:Colors.grey,
             ),
             ),
                ),
              Expanded(
                flex: 7,
                child: Divider()),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?',
                  style: TextStyle(
               color:Colors.grey,
             ),
                  ),
                   TextButton(
                     onPressed:(){
                       Navigator.pushNamed(context,'\Login');
                     },
                     child:Text('Log in.',
                     style: TextStyle(
                       color:Colors.blue,
                     ),
                     ),
                   ),

                ],
              ),
             SizedBox(height: 90,),
             Divider(),
             Text('Instagram oT Facebook',
             style: TextStyle(
               color:Colors.grey,
             ),
             ),


            ]
            ),
          ),
            ]
          
          ),
        ),
      ),
    );
  }
}
class Login extends StatefulWidget{
   @override
   _Login createState() => _Login();
}
class _Login extends State<Login>{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
       body:
       SafeArea(
                child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
           IconButton(
             onPressed:(){
              Navigator.pop(context);
             },
             icon:Icon(Icons.arrow_back_ios),
      ),
      Center(
      child:Column(
            children: <Widget>[
             SizedBox(height:95),
              Text('Instagram',
              style:TextStyle(
                 fontFamily:'BeautyMountains',
                fontSize: 40,
              ),
              ),
              SizedBox(height:60),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height:35,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      filled: true,
                      fillColor: Colors.grey[150],
                      border:OutlineInputBorder(),
                      hintText:'Username',
                      labelText:'Username',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   height:35,
                  child: TextField(
                      decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      filled: true,
                      fillColor: Colors.grey[150],
                      border:OutlineInputBorder(),
                      hintText:'Password',
                      labelText:'Password',
                    ),
                  ),
                ),
              ),
            SizedBox(height:54),
              SizedBox(
                width:340,
                child: ElevatedButton(
                  onPressed:(){
                    Navigator.pushNamed(context,"\Homescreen");
                  }, // to the next route
                  child :const Text('Log in'),
                    style: ElevatedButton.styleFrom(
                    primary:Colors.blue,
                    textStyle:TextStyle(
                        color: Colors.white,
                    ) ,
                    ),
                ),
              ),
              SizedBox(height:60),
              Row(children: [
                Expanded(
                  flex: 7,
                  child: Divider()),
                Expanded(
                  flex:1 ,
                    child: Text('OR',
              style:TextStyle(
               color:Colors.grey,
             ),
             ),
                ),
              Expanded(
                flex: 7,
                child: Divider()),
              ]),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                  style:TextStyle(
               color:Colors.grey,
             ),
             ),
                   TextButton(
                     onPressed:(){
                       Navigator.pushNamed(context,'\SignUp');
                     },
                     child:Text('Sign up.',
                     style: TextStyle(
                       color:Colors.blue,
                     ),
                     ),
                   ),
                ],
              ),
             SizedBox(height: 75,),
             Divider(),
             Text('Instagram oT Facebook',
             style:TextStyle(
               color:Colors.grey,
             ),
             ),


            ]
            ),
      ),
            ]
      
      ),
         ),
       ),
    ) ;
  }
  }

class Homescreen extends StatefulWidget{
   @override
   _Homescreen createState() => _Homescreen();
}
class _Homescreen extends State<Homescreen>{
 final tabs=[  //list of widgets
    '\Homescreen',
    '\Searchscreen',
    '\Profilescreen',
    '\Videoscreen',
    '\Likescreen',
    
  ];
   int _currentIndex=0;
  void _onItemTapped(int index){
    setState((){
      _currentIndex= index;
    });
    Navigator.pushNamed(context,tabs[index]);}
    final set = <String>{};
 @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      leading: Icon(Icons.camera_alt_rounded),
      title:Center(
         child:Text('Instagram',
         style: TextStyle(fontFamily: 'BeautyMountains',
         fontSize: 25,
         ),
         
         ),
      ),
      actions: <Widget>[
        IconButton(
          icon:Icon(Icons.live_tv),
          onPressed: (){},
        ),
        IconButton(
          icon:Icon(MyInstaApp.paper_plane_empty),
          onPressed: (){
            Navigator.pushNamed(context,'\DM');
          },
        ),
      ],
    ),
    body: 
    SingleChildScrollView(
    scrollDirection:Axis.vertical,
    child:Column(
      children: <Widget>[
        Divider(),
        SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          children: <Widget>[
           Story(texT:'Person1',imgName:'assets/imag1.jpg'),
           Story(texT:'Person2',imgName:'assets/image2.jpg'),
           Story(texT:'Person3',imgName:'assets/image3.jpg'),
           Story(texT:'Person4',imgName:'assets/image4.jpg'),
           Story(texT:'Person5',imgName:'assets/image5.jpg'),
          Story(texT:'Person6',imgName:'assets/image6.jpg'),
          Story(texT:'Person7',imgName:'assets/image7.jpg'),
          Story(texT:'Person8',imgName:'assets/image8.jpg'),
          Story(texT:'Person9',imgName:'assets/image9.jpg'),
          Story(texT:'Person10',imgName:'assets/image10.jpg'),
          ],
        ),
        ),
        Divider(),
            Post(title:'Famesi',subtitle:'India',post:'assets/post1.jpg',profile:'assets/imag1.jpg',liked:set),
             Post(title:'ozo_s',subtitle:'India',post:'assets/post5.jpg',profile:'assets/image2.jpg',liked:set),
             Post(title:'npcA',subtitle:'India',post:'assets/post6.jpg',profile:'assets/image3.jpg',liked:set),
             Post(title:'david',subtitle:'India',post:'assets/post7.jpg',profile:'assets/image4.jpg',liked:set),
             Post(title:'Devil',subtitle:'India',post:'assets/post8.jpg',profile:'assets/image5.jpg',liked:set),
             Post(title:'Rashy',subtitle:'India',post:'assets/post9.jpg',profile:'assets/image6.jpg',liked:set),
             Post(title:'ShYaM',subtitle:'India',post:'assets/post10.jpg',profile:'assets/shyam.jpg',liked:set),
            Post(title:'Bhueop',subtitle:'India',post:'assets/image10.jpg',profile:'assets/image7.jpg',liked:set),
            Post(title:'John',subtitle:'India',post:'assets/image9.jpg',profile:'assets/image8.jpg',liked:set),

      ],
    ),
  ),
  bottomNavigationBar:BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedFontSize: 15,
          unselectedFontSize: 10,
    items:const <BottomNavigationBarItem>[
       
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: '',
         
       ), 
           BottomNavigationBarItem(
         icon: Icon(Icons.search),
         label: '',
         
       ),
        BottomNavigationBarItem(
         icon: CircleAvatar(
           backgroundImage: AssetImage('assets/shyam.jpg'),
         ),
         label: '',
        
       ),
        BottomNavigationBarItem(
         icon: Icon(Icons.video_collection),
         label: '',
         
       ),
        BottomNavigationBarItem(
         icon: Icon(Icons.favorite),
         label: '',
         
       ),
       
       
    ],
    onTap:_onItemTapped,

  )
  );
  }
}
class Searchscreen extends StatefulWidget{
   @override
   _Searchscreen createState() => _Searchscreen();
}
class _Searchscreen extends State<Searchscreen>{
  final tabs=[  //list of widgets
    '\Homescreen',
    '\Searchscreen',
    '\Profilescreen',
    '\Videoscreen',
    '\Likescreen',
    
  ];
   int _currentIndex=1;
  void _onItemTapped(int index){
    setState((){
      _currentIndex= index;
    }
    );
    Navigator.pushNamed(context,tabs[index]);}
 final List<String>imgnamE= <String>['assets/imag1.jpg','assets/image10.jpg','assets/image9.jpg','assets/image8.jpg','assets/image7.jpg','assets/image6.jpg','assets/image5.jpg','assets/image4.jpg','assets/image3.jpg','assets/image2.jpg','assets/post1.jpg','assets/post2.jpg','assets/post3.jpg','assets/post4.jpg','assets/post5.jpg','assets/post6.jpg','assets/post7.jpg','assets/post8.jpg','assets/post9.jpg',];
  
 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       leading: Icon(Icons.search,color:Colors.black),
       title:Container(
       height:40,
       
       child:TextField(
        
         style: TextStyle(color: Colors.black),
         decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
           border: OutlineInputBorder(),
           fillColor:Colors.grey[250],
           filled: true,
           hintText: 'search',
         ),
       ),
       ),
       actions: [
         Padding(
           padding: EdgeInsets.all(6),
           child:Icon(Icons.camera_alt_outlined,
         color: Colors.black,)),
       ],
     ),
     body:
    StaggeredGridView.countBuilder(
         crossAxisCount: 2 ,
         itemCount:19,
       itemBuilder: (BuildContext context, int index) {
       return Container(
        decoration: BoxDecoration(
         image:DecorationImage(
           image:AssetImage(imgnamE[index]),
           fit:BoxFit.fill,
         ) 
        ),
        
       );
       },
       staggeredTileBuilder: (int index)=>
        StaggeredTile.count(1,index.isEven?2:1 ),
        crossAxisSpacing:1,
       mainAxisSpacing: 1,
       ),
     bottomNavigationBar: BottomNavigationBar(
           type:BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedFontSize: 15,
          unselectedFontSize: 10,
    items: <BottomNavigationBarItem>[
       
       BottomNavigationBarItem(
         icon: const Icon(Icons.home),
         label:'',
       ), 
           BottomNavigationBarItem(
         icon: const Icon(Icons.search),
         label:'',
       ),
       BottomNavigationBarItem(
         icon: 
           CircleAvatar(
            backgroundImage:AssetImage('assets/shyam.jpg'),
         ),
         label:'',
       ),
        BottomNavigationBarItem(
         icon: Icon(Icons.video_collection),
         label:'',
       ),
        BottomNavigationBarItem(
         icon: Icon(Icons.favorite),
         label:'',
         ),
    ],
    onTap:_onItemTapped,

  ),
   );
 }
}
class DM extends StatefulWidget{
  @override
  _DM createState()=> _DM();
}
class _DM extends State<DM>{
  final List<String>imgname= <String>['assets/imag1.jpg','assets/image9.jpg','assets/image8.jpg','assets/image7.jpg','assets/image6.jpg','assets/image5.jpg','assets/image4.jpg','assets/image3.jpg','assets/image2.jpg',];
  final List<String>titlE= <String>['Akki','martini_ron','andreww','kire_d','maxjack','jamie.franco','n_hummprey','namKing','bhalu'];
  final List<String>sub_title= <String>['','','','','','','','','',];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       leading:IconButton(
          icon:Icon(Icons.arrow_back_ios_new,
          color: Colors.black
          ),
          onPressed:(){
            Navigator.pop(context) ;
          } ,
        ),
        title: Text('ShYaM',
        style:TextStyle(color:Colors.black)
        ),
        actions: [
          IconButton(
          icon:Icon(Icons.add,
          color: Colors.black
          ),
          onPressed:(){},
        ),
        ],
      ),
      body://SingleChildScrollView(
        Column(
          children: <Widget>[
            Container(
            height: 40,
            child:TextField(
             
              decoration: InputDecoration(
               contentPadding: EdgeInsets.all(8),
                icon:Padding(padding:EdgeInsets.all(7),
                  child:Icon(Icons.search)),
                hintText: 'search',
                border: OutlineInputBorder(),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            ),
           Expanded(
           child:ListView.builder(
             padding: EdgeInsets.all(8),
             itemCount: titlE.length,
            
             itemBuilder: (BuildContext context, int index){
               return Container(
                 height: 75,
                 child: ListTile(
                   
                   leading: CircleAvatar(
                    
                     backgroundImage:AssetImage(imgname[index]),
                     ),
                   title: Text(titlE[index]),

                   trailing: Icon(Icons.camera_alt_outlined),
                 ),
               );
             }
           )
           ),
       ],
        )
    // ),
       );
  }
}
class Profilescreen extends StatefulWidget{
   @override
   _Profilescreen createState() => _Profilescreen();
}
class _Profilescreen extends State<Profilescreen>{
 final tabs=[  //list of widgets
    '\Homescreen',
    '\Searchscreen',
    '\Profilescreen',
    '\Videoscreen',
    '\Likescreen',
  ];
   int _currentIndex=2;
  void _onItemTapped(int index){
    setState((){
      _currentIndex= index;
    }
    );
    Navigator.pushNamed(context,tabs[index]);}
  final List<String>imgnamE= <String>['assets/imag1.jpg','assets/image10.jpg','assets/image9.jpg','assets/image8.jpg','assets/image7.jpg','assets/image6.jpg','assets/image5.jpg','assets/image4.jpg','assets/image3.jpg','assets/image2.jpg','assets/post1.jpg','assets/post2.jpg','assets/post3.jpg','assets/post4.jpg','assets/post5.jpg','assets/post6.jpg','assets/post7.jpg','assets/post8.jpg','assets/post9.jpg',];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
          leading:Center(
            child:Icon(Icons.lock),
          ),
          title: Text('ShYaM'),
      ),
        body:ListView(
        children: [
          Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin:EdgeInsets.all(8),
                    child: CircleAvatar(
                      radius:50,
                      backgroundImage: AssetImage('assets/shyam.jpg'),
                    
                    ),
                  ),
                  SizedBox(width:25),
                  Column(children: [
                    Text('54',
                    style:TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Posts'),
                  ],),
                  SizedBox(width:25),
                  Column(children: [
                    Text('356',style:TextStyle(fontWeight: FontWeight.bold),),
                    Text('Followers'),
                  ],),
                  SizedBox(width:25),
                  Column(children: [
                    Text('316',style:TextStyle(fontWeight: FontWeight.bold),),
                    Text('Following'),
                  ],)
                ],
              ),
              Text('  Shyam Chaturvedi'),
              SizedBox(height:4),
              Text('  Flutter Developer'),
              SizedBox(height:4),
              Text('  Flutter is AWESOME!'),
              SizedBox(height:17),
              Center(
                child: Container(
                  width:400,
                  child: TextButton(
                    onPressed: (){}, 
                    child: Text('Edit Profile',
                    style:TextStyle(
                      color:Colors.black, 
                    )),
                     style: ElevatedButton.styleFrom(
                      primary:Colors.white,
                      shape:RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)
    ),
    side:BorderSide(color:Colors.blue)
  ),
                      ),
                    ),
                ),
              ),
            ]
            ),
        ),
         SizedBox(height:10),
          
        GridView.builder(
           physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        
        crossAxisCount: 3,
       crossAxisSpacing:1,
       mainAxisSpacing: 1,
      ),
       itemCount:19,
       itemBuilder: (BuildContext context, int index) {
       return Container(
      
        decoration: BoxDecoration(
         image:DecorationImage(
           image:AssetImage(imgnamE[index]),
           fit:BoxFit.fill,
         ) 
        ),
        
       );
       }
       ),
        
          
    ]    
    ),
        
       bottomNavigationBar: BottomNavigationBar(
           type:BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedFontSize: 15,
          unselectedFontSize: 10,
    items:const <BottomNavigationBarItem>[
       
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: '',
        
       ), 
           BottomNavigationBarItem(
         icon: Icon(Icons.search),
         label: '',
         
       
       ),
       BottomNavigationBarItem(
         icon:CircleAvatar(
           backgroundImage: AssetImage('assets/shyam.jpg'),
         ),
         label: '',
        
       ),
       
        BottomNavigationBarItem(
         icon: Icon(Icons.video_collection),
         label: '',
         
       ),
        BottomNavigationBarItem(
         icon: Icon(Icons.favorite),
         label: '',
         
       ),
       
    ],
    onTap:_onItemTapped,

  ),
    );
  }
}
