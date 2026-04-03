import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../core/theme/theme_data.dart';

class hiringScreen extends StatefulWidget {
  const hiringScreen({super.key});

  @override
  State<hiringScreen> createState() => _hiringScreenState();
}

class _hiringScreenState extends State<hiringScreen> {
  var items = [
    {
      'title': 'ممثلة خدمة عملاء',
      'from': 'شركة تقنية عالمية',
      'type': 'دوام كامل',
      'bgColor': '#dbeafe',
      'textColor': '#1e40af',
      'salary': '6,000 - 8,000 ج.م',
      'location': 'عمل عن بُعد - مصر',
      'requires': [
        'التحدث باللغة العربية والإنجليزية',
        'خبرة سابقة في خدمة العملاء',
        'مهارات اتصال ممتازة',
      ],
    },
    {
      'title': 'كاتبة محتوى إبداعي',
      'from': 'منصة نشر رقمية',
      'type': 'عمل حر',
      'bgColor': '#F3E8FF',
      'textColor': '#6B21A8',
      'salary': 'من 2,000 ج.م شهرياً',
      'location': 'عمل عن بُعد - مصر',
      'requires': [
        'كتابة محتوى جذاب وملهم',
        'معرفة بوسائل التواصل الاجتماعي',
        'القدرة على العمل بمرونة',
      ],
    },
    {
      'title': 'مديرة وسائط اجتماعية',
      'from': 'وكالة تسويق ديجيتال',
      'type': 'دوام جزئي',
      'bgColor': '#E7FCDC',
      'textColor': '#166534',
      'salary': '4,500 - 6,000 ج.م',
      'location': 'عمل عن بُعد - مصر',
      'requires': [
        'إدارة حسابات وسائل التواصل',
        'تصميم وإنشاء محتوى جذاب',
        'تحليل البيانات والإحصائيات',
      ],
    },
    {
      'title': 'مصممة جرافيكس',
      'from': 'استوديو تصميم عصري',
      'type': 'عمل حر',
      'bgColor': '#F3E8FF',
      'textColor': '#6B21A8',
      'salary': 'من 3,000 ج.م شهرياً',
      'location': 'عمل عن بُعد - مصر',
      'requires': [
        'إتقان برامج التصميم الحديثة',
        'إبداع وذوق فني عالي',
        'القدرة على تحقيق رؤية العميل',
      ],
    },
    {
      'title': 'مدخلة بيانات',
      'from': 'شركة استشارات مالية',
      'type': 'دوام كامل',
      'bgColor': '#dbeafe',
      'textColor': '#1e40af',
      'salary': '5,000 - 7,000 ج.م',
      'location': 'عمل عن بُعد - مصر',
      'requires': [
        'سرعة ودقة في إدخال البيانات',
        'معرفة بأنظمة إدارة الجودة',
        'اهتمام بالتفاصيل',
      ],
    },
    {
      'title': 'مدرسة أونلاين',
      'from': 'منصة تعليمية عربية',
      'type': 'عمل حر',
      'bgColor': '#F3E8FF',
      'textColor': '#6B21A8',
      'salary': 'من 1,500 ج.م شهرياً',
      'location': 'عمل عن بُعد - مصر',
      'requires': [
        'درجة جامعية في التخصص المطلوب',
        'مهارات تدريس متقدمة',
        'صبر والتزام برسالة التعليم',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ThemeColors().grayBackground,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              right: 10,
              left: 10,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Text(
                  'فرص عمل عن بُعد',
                  style: ThemeFonts().red.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ابدئي من منزلك واستقلي مالياً - فرص عمل مرنة تناسب احتياجاتك',
                  textAlign: TextAlign.center,
                  style: ThemeFonts().black.copyWith(fontSize: 15),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: ThemeColors().white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.webSearch,
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            hintText: 'ابحثي عن وظيفه, شركة, أو مهاره...',
                            hintStyle: ThemeFonts().gray,
                            suffixIcon: Icon(
                              Icons.search,
                              color: ThemeColors().gray,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ':نوع العمل',
                              style: ThemeFonts().black.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.work_outline,
                              color: ThemeColors().red,
                              size: 20,
                            ),
                          ],
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Wrap(
                            spacing: 8.0,
                            // المسافة الأفقية بين العناصر
                            runSpacing: 8.0,
                            // المسافة الرأسية بين السطور لما ينزل سطر جديد
                            alignment: WrapAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ThemeColors().red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'الكل',
                                      style: ThemeFonts().white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'دوام كامل',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'دوام جزئي',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'عمل حر',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ':المجالات',
                              style: ThemeFonts().black.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.local_offer_outlined,
                              color: ThemeColors().yellow,
                              size: 20,
                            ),
                          ],
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Wrap(
                            spacing: 8.0,
                            // المسافة الأفقية بين العناصر
                            runSpacing: 8.0,
                            // المسافة الرأسية بين السطور لما ينزل سطر جديد
                            alignment: WrapAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'خدمه عملاء',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'كتابه',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'تسويق',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'تصميم',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'بيانات',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 1,
                                    color: ThemeColors().gray,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'تدريس',
                                      style: ThemeFonts().black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'عرض', style: ThemeFonts().black),
                        TextSpan(
                          text: ' ${items.length} ',
                          style: ThemeFonts().red,
                        ),
                        TextSpan(text: 'وظيفه', style: ThemeFonts().black),
                      ],
                    ),
                  ),
                ),

                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // بنوقف الإسكروول بتاعها لو هي جوه سكرول تاني
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        color: ThemeColors().white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.work_outline_sharp,
                                      color: ThemeColors().yellow,
                                    ),
                                    Text(
                                      '${items[index]['title']}',
                                      style: ThemeFonts().red.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${items[index]['from']}',
                                  style: ThemeFonts().black,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: HexColor(
                                      '${items[index]['bgColor']}',
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '${items[index]['type']}',
                                      style: ThemeFonts().black.copyWith(
                                        color: HexColor(
                                          '${items[index]['textColor']}',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 5,
                                    children: [
                                      Row(
                                        spacing: 2,
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            size: 17,
                                            color: ThemeColors().yellow,
                                          ),
                                          Text(
                                            '${items[index]['salary']}',
                                            style: ThemeFonts().black.copyWith(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        spacing: 2,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 17,
                                            color: ThemeColors().yellow,
                                          ),
                                          Text(
                                            '${items[index]['location']}',
                                            style: ThemeFonts().black.copyWith(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'المتطلبات:',
                                        style: ThemeFonts().black.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ListView.separated(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.zero,
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                              return SizedBox(height: 3);
                                            },
                                        itemBuilder:
                                            (
                                              BuildContext context,
                                              int reqIndex,
                                            ) {
                                              return Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                spacing: 3,
                                                children: [
                                                  Container(
                                                    width: 5,
                                                    height: 5,
                                                    color: ThemeColors().yellow,
                                                  ),
                                                  Text(
                                                    '${(items[index]['requires'] as List)[reqIndex]}',
                                                    style: ThemeFonts().black,
                                                  ),
                                                ],
                                              );
                                            },
                                        itemCount:
                                            (items[index]['requires'] as List)
                                                .length,
                                      ),
                                      SizedBox(height: 3),
                                    ],
                                  ),
                                ),
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
                                        'قدمي الأن',
                                        style: ThemeFonts().white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
