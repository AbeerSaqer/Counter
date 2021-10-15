import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/conuter/cubit/cubit.dart';
import 'package:udemy_flutter/modules/conuter/cubit/state.dart';

class CounterScreen extends StatelessWidget {
  int counter =1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state){},
        builder: (context, state){
          child: Scaffold(
            backgroundColor: Colors.black12,
            appBar: AppBar(
              title: Text(
                  'Counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      counter--;
                    },
                    child: Text(
                        'MUNIS'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Text('$counter',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                      ),),
                  ),
                  TextButton(
                    onPressed: (){
                      counter++;

                    },
                    child: Text(
                        'PLUS'
                    ),
                  ),
                ],
              ),
            ),
          );
        },

      ),
    ) ;
  }
}