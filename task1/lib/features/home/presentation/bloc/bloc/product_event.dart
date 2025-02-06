// features/home/presentation/bloc/bloc/product_event.dart
part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

class FetchProducts extends ProductEvent {}
