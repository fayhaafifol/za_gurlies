import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


//------------------CLASS SCHEDULE----------------------


class SchedulePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule",style: TextStyle(fontSize:26)),
      ),
      body:
      Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DateFormat.yMMMMd().format(DateTime.now()),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)),
          Text('Today',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black)),
          TableCalendar(
            rowHeight: 43,
            headerStyle: HeaderStyle(formatButtonVisible: false , titleCentered: true),
            focusedDay: DateTime.now(),
            firstDay:DateTime.utc (2010,1,1),
            lastDay: DateTime.utc(2040,1,1),
          )
        ],
      ),
    );
  }
}
