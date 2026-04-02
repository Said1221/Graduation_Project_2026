import 'package:flutter/material.dart';
import 'package:graduation_project_2026/core/constant/components.dart';
import 'package:graduation_project_2026/home_layout.dart';
import 'package:graduation_project_2026/view/login_screen.dart';

import '../core/theme/theme_data.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

bool isChecked = false;
bool visible = false;
bool visibleConfirm = false;

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.icecream_outlined),
          Text('!مرحباَ بك مجدداَ', style: ThemeFonts().gray),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 15,
              children: [
                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('الاسم الكامل', style: ThemeFonts().black),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'أدخلي اسمك الكامل',
                        hintStyle: ThemeFonts().gray,
                        prefixIcon: Icon(
                          Icons.person,
                          color: ThemeColors().gray,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('البريد الألكتروني', style: ThemeFonts().black),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'example@email.com',
                        hintStyle: ThemeFonts().gray,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: ThemeColors().gray,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('كلمه المرور', style: ThemeFonts().black),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: visible ? false : true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: ThemeColors().gray),
                        prefixIconColor: Colors.grey,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                          icon: Icon(
                            visible ? Icons.visibility_off : Icons.visibility,
                            color: ThemeColors().gray,
                          ),
                        ),
                        suffixIconColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('تأكيد كلمه المرور', style: ThemeFonts().black),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: visibleConfirm ? false : true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: ThemeColors().gray),
                        prefixIconColor: Colors.grey,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visibleConfirm = !visibleConfirm;
                            });
                          },
                          icon: Icon(
                            visibleConfirm
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: ThemeColors().gray,
                          ),
                        ),
                        suffixIconColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ' أوافق علي ',
                            style: ThemeFonts().black,
                          ),
                          TextSpan(
                            text: ' الشروط و الأحكام ',
                            style: ThemeFonts().red,
                          ),
                          TextSpan(text: ' و ', style: ThemeFonts().black),
                          TextSpan(
                            text: 'سياسه الخصوصيه',
                            style: ThemeFonts().red,
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),

                Column(
                  spacing: 10,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ThemeColors().red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          onPressed: () {
                            navigateTo(context, homeLayout());
                          },
                          child: Text(
                            'إنشاء الحساب',
                            style: ThemeFonts().white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 5,
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            decoration: BoxDecoration(
                              color: ThemeColors().gray2,
                            ),
                          ),
                        ),
                        Text('أو', style: ThemeFonts().gray),
                        Expanded(
                          child: Container(
                            height: 2,
                            decoration: BoxDecoration(
                              color: ThemeColors().gray2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        navigateTo(context, loginScreen());
                      },
                      child: Text('سجلي الدخول', style: ThemeFonts().red),
                    ),
                    Text('لديك حساب بالفعل ؟', style: ThemeFonts().black),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
