import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/scheduleFiles/model/scheModel.dart';
import 'package:test/scheduleFiles/services/scheServices.dart';

final serviceProvider = StateProvider<ScheService>((ref){
  return ScheService();

});

final fetchStreamProvider =StreamProvider<List<Task>>((ref) async*{
 final getData =FirebaseFirestore.instance
  .collection('schedule')
  .snapshots()
  .map((event) => event.docs.map((snapshot) => Task.fromSnapshot(snapshot)).toList());
 yield* getData;
});