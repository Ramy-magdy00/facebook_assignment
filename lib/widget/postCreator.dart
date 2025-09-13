import 'package:faceboook/ulitss/AppAssets.dart';
import 'package:faceboook/ulitss/AppColors.dart';
import 'package:flutter/material.dart';

 class Postcreator extends StatelessWidget {
  String iconPath;
  String imagePath;
  String title;
  String time;
  
 Postcreator({super.key, required this.iconPath, required this.imagePath, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(iconPath,),

                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text(title,style: TextStyle(color: Colors.black,fontSize: 17),),
                        Row(
                          children: [
                            Text(time,style: TextStyle(color: Colors.grey,fontSize: 14),),
                            Icon(Icons.public,color: AppColors.lightGray,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Icon(Icons.more_horiz,size: 30,)
              ],
            ),
            SizedBox(height: 10,),
            Image.asset(imagePath,),


            Container(
              height: 50,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(spacing: 10,
                    children: [

                    Image.asset(IconPaths.heart2),
                      Image.asset(IconPaths.chatDots),
                      Image.asset(IconPaths.paperPlane),
                    ],
                  ),

                  Image.asset(IconPaths.bookmark,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
