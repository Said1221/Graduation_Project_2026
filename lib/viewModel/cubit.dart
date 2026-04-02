import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project_2026/view/hiring.dart';
import 'package:graduation_project_2026/view/home_screen.dart';
import 'package:graduation_project_2026/view/shop.dart';
import 'package:graduation_project_2026/view/training.dart';
import 'package:graduation_project_2026/viewState/state.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit():super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 3;

  List<Widget>Screens = [
    trainingScreen(),
    hiringScreen(),
    shopScreen(),
    homeScreen(),
  ];

  void changeNavBar(int index) {
    currentIndex = index;
    emit(AppChangeNavBar());
  }
}