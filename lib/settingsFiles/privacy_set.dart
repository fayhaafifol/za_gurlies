import 'package:flutter/material.dart';
import 'package:test/account/choice.dart';


//---------------------------CLASS PRIVACY-----------------------

class privacy extends StatelessWidget {
  const privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy and Data',style: TextStyle(fontSize:26)),
      ),
       body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
             const SizedBox(height: 15),
      TextButton(onPressed: () {  showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Delete Your Account",style: TextStyle(fontSize: 20),),
                  content: const Text("Do you wanna Delete Your Account （︶^︶）",style: TextStyle(fontSize: 20),),
                  actions: <Widget>[

                  // -------SURE text button------------

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Choice()),);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(14),
                        child: const Text("sure" ,style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),
                    ),

                    // -------SURE text button------------

                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(14),
                        child: const Text("Cancel" ,style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              );
            
            
          },
           child:const Row(
              children: [
                Icon(
                  Icons.delete_forever_outlined,
                  color: Colors.deepOrange,
                  size:35 ,
                ),
                SizedBox(width: 20),
                Text("Delete Your Account" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ))
              ],
            ),
          ),
          ]
        ),
       ),
    );
  }
}
