// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  String? docId;
  String? title;
  String? note;
  String? date;
  int? remind;


  Task({
    this.docId,
    required this.title,
    required this.note,
    required this.date,
    required this.remind,
    

});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id' :docId,
      'title': title,
      'note': note,
      'date': date,
      'remind': remind,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      docId: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      note: map['note'] != null ? map['note'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      remind: map['remind'] != null ? map['remind'] as int : null,
    );
  }
 
 factory Task.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc){
   return Task(
    docId:doc.id,
    title: doc['taskTitle'],
    note: doc['note'], 
    date: doc['date'], 
    remind: doc['remind']);
 }
 
 }











/*
  Task.fromJson(Map<String , dynamic>json){
    title =json['title'];
    note =json['note'];
    isCompleted =json['isCompleted'];
    date =json['date'];
    color =json['color'];
    remind =json['remind'];
  }

  Map<String , dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String , dynamic>();
    data['title']=  this.title;
    data['note']=   this.note;
    data['isCompleted']= this.isCompleted;
    data['date']= this.date;
    data['color']= this.color;
    data['remind']= this.remind;
    return data;
  }*/




