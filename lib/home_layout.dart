import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project_2026/core/theme/theme_data.dart';
import 'package:graduation_project_2026/viewModel/cubit.dart';
import 'package:graduation_project_2026/viewState/state.dart';

class homeLayout extends StatelessWidget {
  const homeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (BuildContext context, AppState state) {},
        builder: (BuildContext context, AppState state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.Screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(

              selectedItemColor: ThemeColors().red,
              unselectedItemColor: ThemeColors().black,

              selectedLabelStyle: ThemeFonts().red,
              unselectedLabelStyle: ThemeFonts().black,





              currentIndex: cubit.currentIndex,
              selectedFontSize: 13,
              unselectedFontSize: 10,

              onTap: (index) {
                cubit.changeNavBar(index);
              },

              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.model_training_outlined),
                  label: 'التدريب',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.work),
                  label: 'فرص عمل',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'سوق ن'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'الرئيسيه',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
