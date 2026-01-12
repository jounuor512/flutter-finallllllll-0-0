
import 'package:flutter/material.dart';

class Buildmeal extends StatelessWidget {
 final String name;
final double price;
final String imgurl;
 
  const Buildmeal({super.key,
   required this.name,
   required this.price,
   required this.imgurl
   });

   @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(imgurl,height: 100,),
               Text(
                textAlign: TextAlign.center,
                name,
               
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,),
                ),
            Text(price.toString(),style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
     );
  }
}