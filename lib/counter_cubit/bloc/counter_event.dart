part of 'counter_bloc.dart';

sealed class CounterEvent {}
class IncrementEvent extends CounterEvent{}
class DencrementEvent extends CounterEvent{}
