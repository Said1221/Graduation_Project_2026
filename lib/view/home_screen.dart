import 'package:flutter/material.dart';
import 'package:graduation_project_2026/core/constant/components.dart';
import 'package:graduation_project_2026/view/shop.dart';
import 'package:graduation_project_2026/viewModel/cubit.dart';

import '../core/theme/theme_data.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image:DecorationImage(
        //       image: AssetImage('assets/plant.jpg'),
        //     fit: BoxFit.cover,
        //     colorFilter:ColorFilter.mode(
        //       Colors.black.withOpacity(0.9),
        //       BlendMode.darken,
        //     )
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                'نُمكّن، نُدعم، نُبادر',
                style: ThemeFonts().red.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'منصتكِ لبداية جديدة',
                style: ThemeFonts().black.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'منصة متكاملة لتمكين المرأة المصرية اقتصادياً واجتماعياً. نوفر لكِ سوقاً للبيع، فرص عمل عن بُعد، دورات تدريبية، والدعم النفسي والمجتمعي. سوياً، نبني مستقبلاً أفضل',
                textAlign: TextAlign.center,
                style: ThemeFonts().gray.copyWith(fontSize: 10),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ThemeColors().yellow),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () {
                          AppCubit.get(context).changeNavBar(0);
                        },
                        child: Row(
                          spacing: 2,
                          children: [
                            Icon(Icons.arrow_back, color: ThemeColors().yellow),
                            Text('انضمي إلينا', style: ThemeFonts().yellow),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ThemeColors().red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () {
                          AppCubit.get(context).changeNavBar(2);
                        },
                        child: Row(
                          spacing: 2,
                          children: [
                            Icon(Icons.arrow_back, color: ThemeColors().white),
                            Text('تصفحي السوق', style: ThemeFonts().white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: 100),
                        duration: const Duration(seconds: 2),
                        builder:
                            (
                              BuildContext context,
                              double value,
                              Widget? child,
                            ) {
                              return Text(
                                '+${value.toInt()}',
                                style: ThemeFonts().yellow.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                      ),
                      Text('فرصه عمل', style: ThemeFonts().black),
                    ],
                  ),
                  Column(
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: 1000),
                        duration: const Duration(seconds: 2),
                        builder:
                            (
                              BuildContext context,
                              double value,
                              Widget? child,
                            ) {
                              return Text(
                                '+${value.toInt()}',
                                style: ThemeFonts().yellow.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                      ),
                      Text('منتج للبيع', style: ThemeFonts().black),
                    ],
                  ),
                  Column(
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: 500),
                        duration: const Duration(seconds: 2),
                        builder:
                            (
                              BuildContext context,
                              double value,
                              Widget? child,
                            ) {
                              return Text(
                                '+${value.toInt()}',
                                style: ThemeFonts().yellow.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                      ),
                      Text('امراه تم تمكينها', style: ThemeFonts().black),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
