import 'package:bloc_and_cubit/counter_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenCubit extends StatelessWidget {
  const CounterScreenCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

class CounterView  extends StatelessWidget {
  const CounterView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (BuildContext  context, state) {
              return Center(child: Text(state.count.toString(), style: TextStyle(fontSize: 20),));
            },
          ),
          ElevatedButton(onPressed: (){
            context.read<CounterCubit>().increment();
            }, child: Text("plus")),
          ElevatedButton(onPressed: (){
            context.read<CounterCubit>().decrement();
          }, child: Text("muins"))
        ],
      ),
    );
  }
}
