import 'package:flutter/material.dart';

//---------------------------CLASS ABOUT-----------------------

class About extends StatelessWidget {
   const About({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About',style: TextStyle(fontSize:26)),
      ),
     
     body:   Container( 

       padding:const EdgeInsets.all(15),

       child:const SingleChildScrollView(
        child:
       Text('''''''''Nolfymos is an application that helps you communicate with your pet  .

Many things can be done through this application.

Nolfymos is the first social media for your pet, 

through which you can communicate with owners pet and you can talk to the doctor and consult him. 

You can posting any thing for you pet . 

There is also all information about all pets, 
Such as what is favorite food ?  
What is the normal length and all of that inside Nolfymos . 

If you always forget the time to vaccinate your pet,there is an schedule that reminds you of the time to vaccinate your pet .''''''''''',
         style: TextStyle(color: Colors.black, fontSize: 30 ,height: 1.5),), 
        )
      
         ),
     
     );
    
  }
}