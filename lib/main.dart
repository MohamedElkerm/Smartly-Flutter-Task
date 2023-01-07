import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/helper/bloc_observer/bloc_obserever.dart';
import 'start_point.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = MyBlocObserver();
  runApp(const StoreApp());
}



