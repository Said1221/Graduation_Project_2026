import 'package:flutter/material.dart';
import 'package:graduation_project_2026/core/constant/components.dart';
import 'package:graduation_project_2026/view/shop.dart';
import 'package:graduation_project_2026/viewModel/cubit.dart';
import 'package:hexcolor/hexcolor.dart';

import '../core/theme/theme_data.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var items = [
    {
      'image': 'assets/fatema.png',
      'name': 'فاطمة',
      'info': '٣٨ سنة • الإسكندرية',
      'description':
          'كنت مطلقة بلا حول ولا قوة، لكن من خلال نون منونة تعلمت صنع المربّى الصحي والعضوي. اليوم أبيع منتجاتي في كل مكان والحمد لله دخلي الشهري تضاعف وأنا فخورة بنفسي',
      'achieve': ' زيادة الدخل الشهري بنسبة 70% وصرح من الكفاح الذاتي',
    },
    {
      'image': 'assets/om_alaa.png',
      'name': 'أم علاء',
      'info': '٣٢ سنة • الإسكندرية',
      'description':
          'أرملة بثلاث أطفال، كنت أبحث عن عمل يوفق بيني وبينهم. التحقت بدورة التسويق الرقمي والآن أعمل مديرة تسويق بدوام جزئي من البيت',
      'achieve': 'حصلت على عمل مستقر وأستطيع رعاية أطفالي بكرامة',
    },
    {
      'image': 'assets/sara.png',
      'name': 'سارة',
      'info': '٢٨ سنة • الإسكندرية',
      'description':
          'كنت مسؤولة عن أسرتي بعد وفاة والدي. تعلمت التصميم الجرافيكي من الدورات على المنصة وأصبحت مصممة مستقلة براتب شهري ثابت',
      'achieve': 'استقلال مالي تام وحلم الدراسات العليا أصبح حقيقة',
    },
    {
      'image': 'assets/nour.png',
      'name': 'نور',
      'info': '٢٦ سنة • الإسكندرية',
      'description':
          'حديجة التخرج وبلا وظائف. بدأت بالعمل كاتبة محتوى عبر المنصة، وبعد شهرين لدي عملاء دائمون وسيارتي الخاصة',
      'achieve': 'دخل شهري يتجاوز 6000 ج.م وحلم الاستقلالية تحقق',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            spacing: 10,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      HexColor('#fff7ed').withOpacity(0),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    right: 15,
                    left: 15,
                    bottom: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        'نُمكّن، نُدعم، نُبادر',
                        style: ThemeFonts().red.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'منصتكِ لبداية جديدة',
                        style: ThemeFonts().black.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'منصة متكاملة لتمكين المرأة المصرية اقتصادياً واجتماعياً. نوفر لكِ سوقاً للبيع، فرص عمل عن بُعد، دورات تدريبية، والدعم النفسي والمجتمعي. سوياً، نبني مستقبلاً أفضل',
                        textAlign: TextAlign.center,
                        style: ThemeFonts().black.copyWith(fontSize: 12),
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
                                    Icon(
                                      Icons.arrow_back,
                                      color: ThemeColors().yellow,
                                    ),
                                    Text(
                                      'انضمي إلينا',
                                      style: ThemeFonts().yellow,
                                    ),
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
                                    Icon(
                                      Icons.arrow_back,
                                      color: ThemeColors().white,
                                    ),
                                    Text(
                                      'تصفحي السوق',
                                      style: ThemeFonts().white,
                                    ),
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
                              Text(
                                'امراه تم تمكينها',
                                style: ThemeFonts().black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                spacing: 5,
                children: [
                  Text(
                    'بصمتها حكاية',
                    style: ThemeFonts().red.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'قصص نجاح ملهمة لنساء مصريات غيّرن حياتهنّ من خلال المنصة',
                    textAlign: TextAlign.center,
                    style: ThemeFonts().black.copyWith(fontSize: 12),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 20);
                  },
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: HexColor('#fff7ed'),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          spacing: 10,
                          textDirection: TextDirection.rtl,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.format_quote_outlined,
                              size: 35,
                              color: ThemeColors().yellow,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 27,
                                  backgroundColor: ThemeColors().yellow,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      '${items[index]['image']}',
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '${items[index]['name']}',
                                      style: ThemeFonts().red.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '${items[index]['info']}',
                                      textAlign: TextAlign.right,
                                      style: ThemeFonts().black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              '${items[index]['description']}',
                              textAlign: TextAlign.end,
                              style: ThemeFonts().black,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text.rich(
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  softWrap: true,
                                  // دي بتسمح بنزول السطر
                                  overflow: TextOverflow.visible,
                                  // عشان م يقصش الكلام بنقط
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.auto_awesome,
                                          size: 15,
                                          color: Colors.yellow.shade900,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' الإنجاز: ',
                                        style: ThemeFonts().yellow.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${items[index]['achieve']}',
                                        style: ThemeFonts().red.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
