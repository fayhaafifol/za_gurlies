import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/scheduleFiles/services_provider.dart';

class CardTask extends ConsumerWidget{
  const CardTask({
    super.key,
    required this.getIndex,
  });
  final int getIndex;

  @override

  Widget build(BuildContext context, WidgetRef ref){
    final scheData =ref.watch(fetchStreamProvider);
    return scheData.when(data: (data)=> const Center(
      child: Text('i have a data'),
      ),

    error: (error,StackTrace)=> Center(
      child: Text(StackTrace.toString()),),

       loading: ()=>const Center(
      child: CircularProgressIndicator(),),
      );
  }
}
