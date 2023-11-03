import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';


class AddTask extends StatefulWidget {
  const AddTask({Key?key}):super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
 
  final titleController = TextEditingController();
  final noteController = TextEditingController();

 DateTime _selectedDate = DateTime .now();
 int _selectedRemind =5;
 List <int> remindList=[
  5,   10,
  15,  20, 
  25,  30, 
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTask',style: TextStyle(fontSize:26)),
      ),
     
     body: Container(
      padding:const EdgeInsets.only(left: 20 , right: 20),
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TheInputField(title: "Title", hint: "Enter your title here",controller: titleController,),
            TheInputField(title: "Notes", hint: "Enter your notes here",controller: noteController,),
            TheInputField(title: "Date", hint: DateFormat.yMd().format(_selectedDate),
            widget: IconButton(
                   icon: Icon(Icons.calendar_today),
                   onPressed: (){
                    _getDateFromUser(context); 
                   },
             ),
             ),
            TheInputField(title: "Remind", hint:"$_selectedRemind minutes early",
            widget: DropdownButton(
              icon: Icon(Icons.keyboard_arrow_down , color: Colors.black,),
              iconSize: 32,
              elevation: 4,
              //style
              underline: Container(height: 0,),
              onChanged: (String? newValue){
                setState(() {
                  _selectedRemind = int.parse(newValue!);
                });
              },
              items: remindList.map<DropdownMenuItem<String>>((int value){
                return DropdownMenuItem<String>(
                  value: value.toString(),
                  child:Text(value.toString()) ,
                  );
              }
              ).toList(),
            ),
            
            ),
            const SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               //_colorPallete(),
               
              MaterialButton(
              onPressed: ()
                 => _submit(),



                /*//ref.read(serviceProvider).AddTask(
                //Task(
                  //title: titleController, 
                  //note: noteController, 
                  //date: _selectedDate, 
                  //remind: _selectedRemind,

                  //titleController.clear(),
                  //noteController.clear(),
                  Navigator.pop(context),
                  
                  ),
                
                );    
                print('data is saving');*/


                  /*CollectionReference collRef =FirebaseFirestore.instance.collection('schedule');
                  collRef.add({
                    'title' :titleController.text,
                    'note' : noteController.text,
                    'date' : _selectedDate,
                    'remind': _selectedRemind,
                    }
                  );},
                  */

              

              
                
              
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
              ],
            )
          
          
          ],

      ),
      ),
     ) ,

  );
}
_submit(){
  CollectionReference collRef =FirebaseFirestore.instance.collection('schedule');
  collRef.add({
    'title' :titleController.text,
    'note' : noteController.text,
    //'date' : _selectedDate,
    'remind': _selectedRemind,
    }
  );
  if(titleController.text.isNotEmpty&& noteController.text.isNotEmpty){
    
      Navigator.pop(context);
  }


  else if(titleController.text.isEmpty || noteController.text.isEmpty){
    
  Widget okButton = TextButton(
    child:const Text("okay"),
    onPressed: () {                        
      Navigator.pop(context);
 },
  );
  AlertDialog alert = AlertDialog(
    title:const Text("warning"),
    content:const Text("You didn't put a title or note why you pressured on addition -_-"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}


_getDateFromUser(BuildContext context) async {
  DateTime? _pickerDate = await showDatePicker( 
   context: context,
   initialDate: DateTime.now(),
   firstDate: DateTime(2015), 
   lastDate: DateTime(2031) );

   if (_pickerDate!=null){
   setState((){
        _selectedDate = _pickerDate;
    print(_selectedDate);
   });
   }
   else {
    print("it's null or something is wrong") ;

   }
}
}


//---------------------INPUT CLASS--------------------------------


class TheInputField extends StatelessWidget {

  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  const TheInputField ({Key? key ,
    required this.title ,
    required this.hint,
    this.controller,
    this.widget,

  }):super(key: key);

  @override

  Widget build (BuildContext context){
    return Container(
      margin:const EdgeInsets.only(top:15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style:const TextStyle(fontSize: 25,
          fontWeight: FontWeight.w400,
          color:Colors.black),
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.only(top: 8),
            padding:const EdgeInsets.only(left: 14),

            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.orange.shade200,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children:[
                Expanded(
                  child:TextFormField(
                    readOnly: widget==null?false:true,
                    autofocus: false,
                    cursorColor: Colors.orange.shade200,
                    controller: controller,
                    style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,) ,
                    decoration: InputDecoration(
                      hintText: hint,
                      focusedBorder:const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                        )
                      ),
                    ),
                  ),

                ),
                widget==null?Container():Container(child:widget)
              ],
            ),
          )
      ],
      ),
    );
  } 

}

