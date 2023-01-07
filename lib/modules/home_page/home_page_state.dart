part of 'home_page_cubit.dart';

@immutable
abstract class HomePageState {}

class HomePageInitial extends HomePageState {}

class GetAllProductSuccess extends HomePageState {}
class GetAllProductError extends HomePageState {}
class GetAllProductLoading extends HomePageState {}
