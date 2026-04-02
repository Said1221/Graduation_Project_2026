import 'package:flutter/material.dart';

import '../core/theme/theme_data.dart';

class shopScreen extends StatefulWidget {
  const shopScreen({super.key});

  @override
  State<shopScreen> createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen> {

  var items = [
    {
      'image' : 'assets/hand_bag.png',
      'title' : 'حقيبة يد مطرزة يدويّة',
      'from' : 'من: ليلى السيد',
      'rate' : '42',
      'salary' : '٤٥٠'
    },
    {
      'image' : 'assets/table_cloth.png',
      'title' : 'مفرش طاولة مطرز بالخيوط الذهبية',
      'from' : 'من: فاطمة محمود',
      'rate' : '28',
      'salary' : '٣٢٠'
    },
    {
      'image' : 'assets/jam.png',
      'title' : 'مربّى طماطم بالأعشاب الطبيعية',
      'from' : 'من: أم علي',
      'rate' : '156',
      'salary' : '٨٥'
    },
    {
      'image' : 'assets/pot.png',
      'title' : 'إناء خزفي مصنوع يدويّاً',
      'from' : 'من: نور عبدالله',
      'rate' : '35',
      'salary' : '٢٨٠'
    },
    {
      'image' : 'assets/sofa_cloth.png',
      'title' : 'قطعة كروشيه مفرش أريكة',
      'from' : 'من: سارة إبراهيم',
      'rate' : '51',
      'salary' : '١٩٥'
    }
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
          
                Text('سوق نُ الإلكتروني' , style: ThemeFonts().red.copyWith(fontWeight: FontWeight.bold , fontSize: 20),),
                Text('منتجات يدويّة وحرفيّة من إبداع نساء مصريات' , style: ThemeFonts().black.copyWith(fontSize: 15),),
          
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
                            hintText: 'ابحثي عن منتج او بائعه...',
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
                        Text(':التصنيفات' , style: ThemeFonts().black.copyWith(fontWeight: FontWeight.bold),),
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
                                      child: Text('حقائب' , style: ThemeFonts().black,),
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
                                      child: Text('مفروشات و كروشيه' , style: ThemeFonts().black,),
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
                                      child: Text('أطعمه' , style: ThemeFonts().black,),
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
                                      child: Text('خزفيات' , style: ThemeFonts().black,),
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
                                      child: Text('ملابس' , style: ThemeFonts().black,),
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
                                      child: Text('عنايه' , style: ThemeFonts().black,),
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
                            Container(
                              height: 45,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: ThemeColors().white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: ThemeColors().gray, width: 1),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: "الافتراضي",
                                  style: TextStyle(color: ThemeColors().black, fontSize: 14),
                                  items: ['الافتراضي', 'السعر: من الأقل', 'السعر: من الأعلي' , 'التقييم' , 'الأكثر مراجعه'].map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(value , style: ThemeFonts().black.copyWith(fontWeight: FontWeight.bold),),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {},
                                ),
                              ),
                            ),
                            Text(':ترتيب حسب' , style: ThemeFonts().black,),
                            Icon(Icons.filter_list , color: ThemeColors().red,),
                          ],
                        )
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
                            text: 'منتج',
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
                                  Text('${items[index]['title']}' , style: ThemeFonts().black.copyWith(fontWeight: FontWeight.bold , fontSize: 15),),
                                  Text('${items[index]['from']}' , style: ThemeFonts().black,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.star,size: 15,color: ThemeColors().yellow,),
                                      Icon(Icons.star,size: 15,color: ThemeColors().yellow,),
                                      Icon(Icons.star,size: 15,color: ThemeColors().yellow,),
                                      Icon(Icons.star,size: 15,color: ThemeColors().yellow,),
                                      Icon(Icons.star,size: 15,color: ThemeColors().yellow,),
                                      Text('(${items[index]['rate']})' , style: ThemeFonts().black,),
                                    ],
                                  ),
                                  Text(' ${items[index]['salary']} ج.م' , style: ThemeFonts().red.copyWith(fontWeight: FontWeight.bold , fontSize: 15),),
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
                                        child: Row(
                                          spacing: 5,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'أضف للسله',
                                              style: ThemeFonts().white,
                                            ),
                                            Icon(Icons.shopping_cart_outlined , color: ThemeColors().white,)
                                          ],
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
