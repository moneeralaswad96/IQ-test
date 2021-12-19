import 'package:flutter/material.dart';
import 'package:flutter_application_3/quiz.dart';
import 'package:flutter_application_3/result.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool isSwitch = false;
  Color w = Colors.white54;
  Color b = Colors.black38;
  int totalScore = 0;
  int _indexQuestion = 0;

  void restartQuiz() {
    setState(() {
      _indexQuestion = 0;
      totalScore = 0;
    });
  } // تهيئة من اجل جمع علامة كل سؤال

  void answerQuestion(score) {
    totalScore += score;
    setState(() {
      _indexQuestion += 1;
      print(_indexQuestion);
      print("answer choosen");
      print(totalScore);
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questiontext':
          ' إذا كان إجمالي ثمن مضرب مع كرة يساوي 1.10دولار، وكان ثمن المضرب يزيد على ثمن الكرة بمقدار 1 دولار، فكم يكون ثمن الكرة؟  ',
      'answers': [
        {'title': ' سعر الكرة يبلغ 0.05', 'score': 15},
        {'title': 'سعر الكرة يبلغ 0.1', 'score': 0},
        {'title': 'سعر الكرة يبلغ 0.55', 'score': 0},
        {'title': 'سعر الكرة يبلغ 1.05', 'score': 0},
      ]
    }, // السؤال الاول
    {
      'questiontext':
          ' إذا كان لدينا 5 آلات تستغرق 5 دقائق لإنتاج 5 قطع، فكم من الوقت تستغرق 100 آلة من نفس النوع لإنتاج 100 قطعة؟  ',
      'answers': [
        {
          'title': ' حتى تنتج 100 آلة 100 قطعة فإنها تستغرق 100 دقيقة.',
          'score': 0
        },
        {
          'title': 'حتى تنتج 100 آلة 100 قطعة فإنها تستغرق 5 دقائق.',
          'score': 15
        },
        {
          'title': 'حتى تنتج 100 آلة 100 قطعة فإنها تستغرق 15 دقائق.',
          'score': 0
        },
        {
          'title': 'حتى تنتج 100 آلة 100 قطعة فإنها تستغرق 1000 دقيقة.',
          'score': 0
        },
      ]
    }, //السؤال الثاني
    {
      'questiontext':
          ' تحتاج زهرات اللوتس إلى 47 يوماً لتغطي نصف سطح البحيرة  ',
      'answers': [
        {'title': ' 44', 'score': 0},
        {'title': '45', 'score': 0},
        {'title': '46', 'score': 0},
        {'title': '47', 'score': 15},
      ]
    }, // السؤال الثالث
    {
      'questiontext':
          ' بعض شهور السنة فيها 30 يوم وبعضها فيه 31 يوم فأيها فيه 28 يوم؟',
      'answers': [
        {'title': ' الشهر الاول ', 'score': 0},
        {'title': 'الشهر الثاني ', 'score': 0},
        {'title': 'الشهر الحادي عشر ', 'score': 0},
        {'title': 'كل اشهر السنة ', 'score': 15},
      ]
    }, // السؤال الرابع
    {
      'questiontext': ' قم بقسمة 30 على نصف ثم أضف 10 فكم تكون النتيجة؟  ',
      'answers': [
        {'title': ' 25', 'score': 0},
        {'title': '45', 'score': 0},
        {'title': '70', 'score': 15},
        {'title': '75', 'score': 0},
      ]
    }, // السؤال الخامس
    {
      'questiontext':
          ' لدينا هذه المجموعة: 29 - 27 - 24 - 20 - 15 - ..... ما هو الرقم التالي ؟  ',
      'answers': [
        {'title': ' 7', 'score': 0},
        {'title': '9', 'score': 15},
        {'title': '30', 'score': 0},
        {'title': '33', 'score': 0},
      ]
    }, // السؤال السادس
    {
      'questiontext':
          'إذا تم إعطائك ثلاثة أقراص من الدواء وطلب منك أخذ قرص كل نصف ساعة فكم المدة بين أول قرص وآخر قرص؟  ',
      'answers': [
        {'title': ' ساعة', 'score': 10},
        {'title': 'نصف ساعة', 'score': 0},
        {'title': 'ساعة ونص', 'score': 0},
        {'title': 'ساعة وربع ', 'score': 0},
      ]
    }, // السؤال السابع
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // لالغاء الشريط المائل  في العنوان
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            actions: [
              Switch(
                activeColor: ThemeData.light().accentColor,
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                    print(isSwitch);
                    if (isSwitch == true) {
                      b = Colors.white54;
                      w = Colors.black38;
                    }
                    if (isSwitch == false) {
                      w = Colors.white54;
                      b = Colors.black38;
                    }
                  });
                },
              ), // مفتاح لتغير من الاسود للابيض وبالعكس
            ],
            title: Text(
              "IQ Text",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black54,
                  fontFamily: 'Roboto-Condensed'),
            ),
          ),
          body: Container(
            color: w,
            child: _indexQuestion < _question.length
                ? Quiz(_question, _indexQuestion, answerQuestion)
                : Result(restartQuiz, totalScore),
          )), // في البداية اختبار اذا كان رقم السؤال اقل من عدد الاسئلة قم باسدعاء دالة الاسئلة واعطي النتائج
    );
  }
}
