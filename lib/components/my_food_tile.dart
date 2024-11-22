import 'package:flutter/material.dart';
import '../models/food.dart';




class FoodTile extends StatelessWidget {
 final Food food;
 final void Function()? onTap;




 const FoodTile({
   super.key,
   required this.food,
   required this.onTap,
 });








 @override
 Widget build(BuildContext context)
{
 return Column(
   children :[
     GestureDetector(
       onTap: onTap,
       child:Padding(
         padding: const EdgeInsets.all(10.0),
       child : Row(
         children: [
           Expanded(
             child: Column (
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(food.name),
                 Text('Rs${food.price}' , style: TextStyle(
                   color: Theme.of(context).colorScheme.primary
                  ),
                 ),
                 Text
                 (food.description ,
                 style: TextStyle(
                   color: Theme.of(context).colorScheme.inversePrimary
                   ),
                 ),
               ],
             )
             ),
            //expanded
             // food image
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
                child :Image.asset(food.imagePath , height: 120 ),
             )
         ],
           ),
       ),




     ),
     const SizedBox(width: 15),




     //divider line
     Divider(
       color : Theme.of(context).colorScheme.tertiary,
       endIndent: 25,
       indent: 25,
     )
   ]




 );




}




}
