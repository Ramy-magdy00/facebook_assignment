import 'package:faceboook/ulitss/AppAssets.dart';
import 'package:faceboook/ulitss/AppColors.dart';
import 'package:faceboook/widget/Story_Creator.dart';
import 'package:faceboook/widget/postCreator.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});
  static const routename="home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: AppColors.white,
   title: Image.asset(ImagePaths.facebook,width: 150,),
       automaticallyImplyLeading: false,
        actions: [

          Image.asset("assets/icons/messanger.png" ,),
          SizedBox(width: 20,),
         Image.asset("assets/icons/Search.png"),
          SizedBox(width: 20,),
          Image.asset("assets/icons/Plus.png"),
        ],

shadowColor: AppColors.lightGray,
      ),
      body:ListView(
        children: [ Container(
          color: Colors.white,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Image.asset("assets/icons/Vector (1).png",),
                    Image.asset("assets/icons/Group 17.png"),
                    Image.asset("assets/icons/Profile.png"),
                    Image.asset("assets/icons/Notification (1).png"),
                    Image.asset("assets/icons/Store (1).png"),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset("assets/icons/messi.jpg",height: 32,width:  32,)),

                  ]
                ),
              ),
              Divider(thickness: 2,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(17),
                               child: Stack(


                                   children: [ Image.asset("assets/icons/messi.jpg",height: 160,width:  110,fit: BoxFit.cover,),

                                     Positioned(
                                       top: 91,
                                       child: Stack(
                                           children:[ Container(
                                               width: 110,
                                               height: 70,
                                               decoration: BoxDecoration(
                                                   color: AppColors.white
                                               )
                                           ),
                                             Positioned(
                                                 top: 17,
                                                 left: 10,
                                                 child: Text("Create a Story"))
                                           ]
                                       ),
                                     ),
                                     Positioned(
                                         top:80,
                                         left: 45,
                                         child: Container(
                                             width: 25,
                                             height: 25,
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: AppColors.white,
                                             ),


                                             child: Image.asset("assets/icons/Plus.png",color: AppColors.facebookBlue,))),

                                   ]
                               ),
                             ),
                             SizedBox(width: 15,),
                             storyCreator(imagePath: "assets/icons/messi.jpg", iconPath: "assets/icons/messi.jpg",),
                             SizedBox(width: 15,),
                             storyCreator(imagePath: "assets/icons/messi.jpg", iconPath: "assets/icons/messi.jpg",),
                             SizedBox(width: 15,),
                             storyCreator(imagePath: "assets/icons/messi.jpg", iconPath: "assets/icons/messi.jpg",),
                             SizedBox(width: 15,),
                             storyCreator(imagePath: "assets/icons/messi.jpg", iconPath: "assets/icons/messi.jpg",),
                             SizedBox(width: 15,),
                             storyCreator(imagePath: "assets/icons/messi.jpg", iconPath: "assets/icons/messi.jpg",)

                           ],
                         ),
                      ),
                    ),

                   ],
                ),
              ),
              Divider(thickness: 3,),
              Postcreator(iconPath: ImagePaths.route, imagePath:ImagePaths.routeImage , title: "Route", time: "2h .",),
           Divider(thickness: 3,),
              Postcreator(iconPath: ImagePaths.route, imagePath:ImagePaths.routeImage , title: "Route", time: "2h .",),
              Divider(thickness: 3,),
              Postcreator(iconPath: ImagePaths.route, imagePath:ImagePaths.routeImage , title: "Route", time: "2h .",),
              Divider(thickness: 3,),
              Postcreator(iconPath: ImagePaths.route, imagePath:ImagePaths.routeImage , title: "Route", time: "2h .",),
              Divider(thickness: 3,),
              Postcreator(iconPath: ImagePaths.route, imagePath:ImagePaths.routeImage , title: "Route", time: "2h .",),
              Divider(thickness: 3,),
            ]
          ),
        ),]
      ),
    );
  }
}
