import 'package:bloc_and_cubit/counter_cubit/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenBloc extends StatelessWidget {
  const CounterScreenBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
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
          BlocBuilder<CounterBloc, CounterState>(
            builder: (BuildContext  context, state) {
              return Center(child: Text(state.count.toString(), style: TextStyle(fontSize: 20),));
            },
          ),
          ElevatedButton(onPressed: (){
            context.read<CounterBloc>().add(IncrementEvent());
            }, child: Text("plus")),
          ElevatedButton(onPressed: (){
            context.read<CounterBloc>().add(DencrementEvent());
          }, child: Text("muins"))
        ],
      ),
    );
  }
}
