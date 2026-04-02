import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../core/theme/theme_data.dart';

class trainingScreen extends StatefulWidget {
  const trainingScreen({super.key});

  @override
  State<trainingScreen> createState() => _trainingScreenState();
}

class _trainingScreenState extends State<trainingScreen> {
  var items = [
    {
      'image' : 'assets/1.png',
      'title' : 'التسويق الرقمي والإعلانات',
      'from' : 'المدرب: أ. د. أحمد السيد',
      'description' : 'تعلمي استراتيجيات التسويق الحديثة وكيفية الوصول لعملاء جدد عبر الإنترنت',
      'duration' : '8 أسابيع',
      'subscriptions' : '342 مشاركة حالياً',
      'type' : 'مبتدئ',
      'textColor' : '#166534',
      'bgColor':'#E7FCDC',
    },
    {
      'image' : 'assets/2.png',
      'title' : 'ريادة الأعمال والعمل الحر',
      'from' : 'المدرب: م. أحمد محمد',
      'description' : 'كيفية بدء مشروعك الخاص وإدارته بنجاح من البداية إلى الاحتراف',
      'duration' : '10 أسابيع',
      'subscriptions' : '287 مشاركة حالياً',
      'type' : 'متوسط',
      'textColor' : '#854d0e',
      'bgColor':'#FEF9C3',
    },
    {
      'image' : 'assets/3.png',
      'title' : 'الحرف اليدويّة والفنون',
      'from' : 'المدرب: الفنانة سامية حسن',
      'description' : 'تعلمي فنون اليدويات الجميلة وحول أعمالك إلى مشروع مربح',
      'duration' : '12 أسبوع',
      'subscriptions' : '156 مشاركة حالياً',
      'type' : 'مبتدئ',
      'textColor' : '#166534',
      'bgColor':'#E7FCDC',
    },
    {
      'image' : 'assets/4.png',
      'title' : 'التصوير الفوتوغرافي الاحترافي',
      'from' : 'المدرب: محمود علي - مصور محترف',
      'description' : 'احترفي التصوير واستخدمي مهاراتك في كسب دخل إضافي عبر الإنترنت',
      'duration' : '6 أسابيع',
      'subscriptions' : '198 مشاركة حالياًً',
      'type' : 'متوسط',
      'textColor' : '#854d0e',
      'bgColor':'#FEF9C3',
    },
    {
      'image' : 'assets/5.png',
      'title' : 'الخياطة والتفصيل الحديث',
      'from' : 'المدرب: أستاذة ليلى إبراهيم',
      'description' : 'تعلمي الخياطة من الصفر وأنشئي تصاميمك الخاصة وتوسعي سوقك',
      'duration' : '9 أسابيع',
      'subscriptions' : '312 مشاركة حالياً',
      'type' : 'مبتدئ',
      'textColor' : '#166534',
      'bgColor':'#E7FCDC',
    },
    {
      'image' : 'assets/6.png',
      'title' : 'إدارة المشاريع الصغيرة',
      'from' : 'المدرب: د. فاطمه محمد',
      'description' : 'تعرفي على أفضل الممارسات في إدارة المشاريع والعمليات التجارية',
      'duration' : '10 أسابيع',
      'subscriptions' : '221 مشاركة حالياً',
      'type' : 'متقدم',
      'textColor' : '#991b1b',
      'bgColor':'#FEE2E2',
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
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top , right: 10 , left: 10 , bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [

                Text('ورش ودورات تدريبية' , style: ThemeFonts().red.copyWith(fontWeight: FontWeight.bold , fontSize: 20),),
                Text('طوّري مهاراتك مع متخصصين وافتحي أبواباً جديدة للنجاح' , style: ThemeFonts().black.copyWith(fontSize: 15),),

                Container(
                  decoration: BoxDecoration(
                      color: ThemeColors().white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color : Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        )
                      ]
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
                            hintText: 'ابحثي عن دوره, مدرب, أو موضوع...',
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
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.grey, width: 2),
                            ),
                          ),
                        ),
                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(':المستوي' , style: ThemeFonts().black.copyWith(fontWeight: FontWeight.bold),),
                            Icon(Icons.school_outlined , color: ThemeColors().red,size: 20,),
                          ],
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Wrap(
                            spacing: 8.0, // المسافة الأفقية بين العناصر
                            runSpacing: 8.0, // المسافة الرأسية بين السطور لما ينزل سطر جديد
                            alignment: WrapAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: ThemeColors().red,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('الكل' , style: ThemeFonts().white,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('مبتدئ' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('متوسط' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('متقدم' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),

                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(':المواضيع' , style: ThemeFonts().black.copyWith(fontWeight: FontWeight.bold),),
                            Icon(Icons.local_offer_outlined , color: ThemeColors().yellow,size: 20,),
                          ],
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Wrap(
                            spacing: 8.0, // المسافة الأفقية بين العناصر
                            runSpacing: 8.0, // المسافة الرأسية بين السطور لما ينزل سطر جديد
                            alignment: WrapAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('تسويق' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('ريادة' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('حرف يدويه' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('تصوير' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('خياطة' , style: ThemeFonts().black,),
                                    ),
                                  )
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(width: 1 , color: ThemeColors().gray)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MaterialButton(onPressed: (){} ,
                                      child: Text('إدارة' , style: ThemeFonts().black,),
                                    ),
                                  )
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
                            TextSpan(
                                text: 'عرض',
                                style: ThemeFonts().black
                            ),
                            TextSpan(
                                text: ' ${items.length} ',
                                style: ThemeFonts().red
                            ),
                            TextSpan(
                                text: 'دورة',
                                style: ThemeFonts().black
                            )
                          ]
                      )
                  ),
                ),

                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // بنوقف الإسكروول بتاعها لو هي جوه سكرول تاني
                  itemCount: items.length,
                  itemBuilder: (BuildContext context , int index){
                    return Container(
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                              color : Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            )
                          ],
                          color: ThemeColors().white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Image.asset('${items[index]['image']}'),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.workspace_premium , color: ThemeColors().yellow,),
                                    Text('${items[index]['title']}' , style: ThemeFonts().red.copyWith(fontWeight: FontWeight.bold , fontSize: 15),),
                                  ],
                                ),
                                Text('${items[index]['from']}' , style: ThemeFonts().black),

                                Text('${items[index]['description']}' ,textAlign: TextAlign.end, style: ThemeFonts().black),

                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 5,
                                    children: [
                                      Row(
                                        spacing: 2,
                                        children: [
                                          Icon(Icons.access_time_outlined , size: 17, color: ThemeColors().yellow,),
                                          Text('${items[index]['duration']}' , style: ThemeFonts().black.copyWith(fontSize: 15),),
                                        ],
                                      ),
                                      Row(
                                        spacing: 2,
                                        children: [
                                          Icon(Icons.people_alt_outlined , size: 17, color: ThemeColors().yellow,),
                                          Text('${items[index]['subscriptions']}' , style: ThemeFonts().black.copyWith(fontSize: 15),),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: HexColor('${items[index]['bgColor']}'),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text('${items[index]['type']}' , style: ThemeFonts().black.copyWith(color: HexColor('${items[index]['textColor']}')),),
                                        ),
                                      ),
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
                                        'سجلي في الدورة',
                                        style: ThemeFonts().white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10); },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
