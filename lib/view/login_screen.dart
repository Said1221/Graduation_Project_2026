import 'package:flutter/material.dart';
import 'package:graduation_project_2026/core/theme/theme_data.dart';
import 'package:hexcolor/hexcolor.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

bool isChecked = false;
bool visible = false;

class _loginScreenState extends State<loginScreen> {
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
                      obscureText: visible ? true : false,
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
                            visible ? Icons.visibility : Icons.visibility_off,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'نسيت كلمه المرور ؟',
                        style: ThemeFonts().red,
                      ),
                    ),
                    Row(
                      children: [
                        Text('تذكرني', style: ThemeFonts().black),
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
                          onPressed: () {},
                          child: Text(
                            'تسجيل الدخول',
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
                      onPressed: () {},
                      child: Text('سجلي الأن', style: ThemeFonts().red),
                    ),
                    Text('ليس لديك حساب ؟', style: ThemeFonts().black),
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
