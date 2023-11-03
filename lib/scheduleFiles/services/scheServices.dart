import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test/scheduleFiles/model/scheModel.dart';


class ScheService{
  final taskCollection = FirebaseFirestore.instance.collection('schedule');
  
void AddTask (Task model){
   taskCollection.add(model .toMap() );
   

}
}