import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:test/scheduleFiles/addPage_sche.dart';




//------------------CLASS SCHEDULE---------------------- 


class SchedulePage extends StatelessWidget{ 
     SchedulePage ({Key? key}):super(key: key);
 
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule",style: TextStyle(fontSize:26)),
       ),
      body: Column(

        children: [
       _addTaskBar(),
        MaterialButton(
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  AddTask(),));
              },
              padding: EdgeInsets.zero,
              child:Container(
              alignment: Alignment.center,
              width: 220,
              height: 40,
              decoration: BoxDecoration(color:Colors.orange[400],
              borderRadius: BorderRadius.circular(37),
             ),
             
              child: const Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              Icon(
                  Icons.add,
                  color: Colors.black,
                  size:35 ,
                ),
                Text("Addition" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ,))
                ]
              ),
            ),    
          ),
       _addDateBar(),
        const SizedBox(height: 25,),

        _task(),

        /*ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          //itemBuilder: (context,Index)=> CardTask(getIndex: 1),
        )*/
        ],
      )   

     );
    }
    _task(){
      const SizedBox(height: 25,);

      return Container(
        
        child:Column(children: [
         const Text (
          '''Vaccination  
Quadruple vaccination for my cat
10/28/2023 ''',
          style:  TextStyle(
            color:Colors.pink,
            fontSize: 25,
          )
        ),
        Container(decoration: const BoxDecoration (
          color: Colors.pink,
          )
         
        ),
        ],
        ) 

      );
    }

    _addDateBar(){
      return  Container(
        margin: const EdgeInsets.only(top:25,left: 20),
        child: DatePicker(
          DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate:DateTime.now() ,
          selectionColor:Colors.pink ,
          selectedTextColor: Colors.white ,
          dateTextStyle:const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color:Colors.black,
          ),
         
          monthTextStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color:Colors.black,
          ),
        
          dayTextStyle:const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color:Colors.black,
          ),
          
          onDateChange: (date){
              _selectedDate=date;
          },
          
        ),
       );
    }
    _addTaskBar(){
      return Container( 
            margin: const EdgeInsets.only(left: 15, right: 10, top: 20,),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                  children:[ 
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          
                children: [
                      Text(DateFormat.yMMMMd().format(DateTime.now()),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)),
                     Text('Today',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black)),
                    ],
              ),
            ),
          ], 
        ),
      );
    }
  }
 