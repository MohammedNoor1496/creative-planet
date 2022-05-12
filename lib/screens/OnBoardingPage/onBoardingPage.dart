import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quiz_app/screens/OnBoardingPage/widgets/button_widget.dart';
import 'package:quiz_app/screens/OnBoardingPage/widgets/target_item.dart';

import '../../../constants.dart';
import '../welcome/welcome_screen.dart';

class OnBoardingPage extends GetView {
  const OnBoardingPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'جامعة السودان للعلوم والتكنولوجيا',
              // body:
              //     'كلية الدراسات العليا \n برنامج كواكب الإبداع لمهارات اللغة العربية لطلاب الصف الرابع الابتدائي \nالمعلمة :نعيمة يوسف عوض',
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "كلية الدرسات العليا",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "برنامج كواكب الإبداع لمهارات اللغه العربية لطلاب الصف الرابع الابتدائي",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "المعلمة : نعيمة يوسف عوض",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              image: buildImage('assets/uni.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'المعلمة :نعيمة يوسف عوض',
              // body:
              //     'معلمة مرحلة ابتدائية لمادة اللغة العربية \n مدرسة الإمارات الوطنية مجمع محمد بن زايد \n ماجستير مناهج وطرق تدريس \n حاصلة على جائزة حمدان للأداء التعليمي المتميز \n حاصلة على وسام التميز على مستوى المدارس النموذجية \n حاصلة على جائزة الشارقة فئة المعلم المتميز \n المشرفون \n د. عاتقة يوسف المبارك\n أستاذ مشارك  قسم التربية المتكاملة بالحاسوب. كلية التربية\n منسق التدريب الالكتروني. قسم التدريب والتربية العملية\n جامعة السودان للعلوم والتكنولوجيا – مشرف رئيس\n atikaa5@hotmail.com\n د. رانية الطاهر عبود            \n       أستاذ مساعد التربية المتكاملة بالحاسوب\n raniaeltahir2@gmail.com  ',
              // image: buildImage('assets/planets.png'),
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "معلمة مرحلة ابتدائية لمادة اللغة العربية",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "مدرسة الإمارات الوطنية مجمع محمد بن زايد",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "ماجستير مناهج وطرق تدريس",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "حاصلة على جائزة حمدان للأداء التعليمي المتميز",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "حاصلة على وسام التميز على مستوى المدارس النموذجية",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "حاصلة على جائزة الشارقة فئة المعلم المتميز",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " n.awad@mbz.ens.sch.ae :للتواصل ايميل  ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "المشرفون ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "د. عاتقة يوسف المبارك",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "منسق التدريب الالكتروني. قسم التدريب والتربية العملية",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "جامعة السودان للعلوم والتكنولوجيا – مشرف رئيس",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "atikaa5@hotmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "د. رانية الطاهر عبود            ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "      أستاذ مساعد التربية المتكاملة بالحاسوب",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "raniaeltahir2@gmail.com  ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              image: buildImage('assets/tech.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'تعريف البرنامج',
              // body:
              //     'عزيزي الطالب أقدم لك هذه الأنشطة والتدريبات في هذا البرنامج الإلكتروني المحوسب وهي عبارة عن تدريبات متنوعة لكي تساعدك في تعزيز وإتقان مهاراتك في مادة اللغة العربية وتطور أدائك في مهارة القراءة والكتابة وتعزز مهارات التفكير لديك وتلائم مستواك التحصيلي. \n البرنامج متطلب من متطلبات درجة الدكتوراة في تكنولوجيا التعليم ',
              bodyWidget: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ".عزيزي الطالب أقدم لك هذه الأنشطة والتدريبات في هذا البرنامج الإلكتروني المحوسب وهي عبارة عن تدريبات متنوعة لكي تساعدك في تعزيز وإتقان مهاراتك في مادة اللغة العربية وتطور أدائك في مهارة القراءة والكتابة وتعزز مهارات التفكير لديك وتلائم مستواك التحصيلي",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    ".أن تقرأ الكلمات والجمل قراءة صحيحة بدون أخطاء",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              image: buildImage('assets/aboutus.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'أهداف البرنامج ',
              // body:
              //     'عزيزي الطالب بعد إكمالك هذا البرنامج ستكون قادراً على: \n أن تقرأ الكلمات والجمل قراءة صحيحة بدون أخطاء. \n أن تفهم المقروء بصورة صحيحة. \n أن تجيب عن أسئلة الفهم والاستيعاب بصورة صحيحة. \n أن تكتب كلمات وجملاً بصورة صحيحة. \n أن تميز المهارات الإملائية والنحوية بشكل فاعل. \n أن تكتسب مفردات وتراكيب جديدة. \n أن توظف المفردات والتراكيب في جمل جديدة. \n أن تستنبط الأفكار العامة من النصوص  القرائية. \n أن تبدي رأيك في المواقف. \n أن تنظم أفكارك لتكتب موضوعاً تعبيرياً متكامل الأركان.',
              bodyWidget: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TargetWidget(
                    targetText:
                        ".أن تقرأ الكلمات والجمل قراءة صحيحة بدون أخطاء",
                  ),
                  TargetWidget(
                    targetText: ".أن تفهم المقروء بصورة صحيحة",
                  ),
                  TargetWidget(
                    targetText:
                        ".أن تجيب عن أسئلة الفهم والاستيعاب بصورة صحيحة",
                  ),
                  TargetWidget(
                    targetText: ".أن تكتب كلمات وجملاً بصورة صحيحة",
                  ),
                  TargetWidget(
                    targetText:
                        ".أن تميز المهارات الإملائية والنحوية بشكل فاعل",
                  ),
                  TargetWidget(
                    targetText: ".أن تكتسب مفردات وتراكيب جديدة",
                  ),
                  TargetWidget(
                    targetText: ".أن توظف المفردات والتراكيب في جمل جديدة",
                  ),
                  TargetWidget(
                    targetText:
                        " .أن تستنبط الأفكار العامة من النصوص  القرائية",
                  ),
                  TargetWidget(
                    targetText: ".أن تبدي رأيك في المواقف",
                  ),
                  TargetWidget(
                    targetText:
                        ".أن تنظم أفكارك لتكتب موضوعاً تعبيرياً متكامل الأركان",
                  ),
                ],
              ),
              image: buildImage('assets/goal.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'عمل البرنامج',
              body:
                  'عزيزي الطالب البرنامج سهل الاستخدام  يعمل على جهاز الايباد على أندرويد نسخة 11 بإمكانك العمل بمفردك  بكل سهولة ويسر سيستغرق منك العمل على كل مستوى ما بين 30 -45 دقيقة في اليوم مرتان في الأسبوع خلال الفصل الدراسي. \n  ستبدأ عزيزي الطالب أولاً بأساسيات القراءة وهي عبارة عن ثلاث مراحل وكلما انتهيت من مرحلة وأتقنت ما فيها ستنتقل للمرحلة الثانية وهكذا حتى تنتهي من المراحل الثلاث سيكون هناك تقييم قرائي على سجلات القراءة بعد كل مرحلة وسيتم تقديم تغذية راجعة لك بعد كل مستوى. \n ثم ستنتقل لمرحلة الفهم والاستيعاب وهي عبارة عن ثلاث مستويات اقرأ النصوص جيداً ثم أجب عن الأسئلة وهناك أسئلة مطلوب أن تكتب الإجابات، وكلما انتهيت من مستوى ستنتقل إلى المستوى الذي يليه حتي تنتهي من المستويات. \n ثم ستنتقل إلى مرحلة تدريبات الكتابة وهي عبارة عن ثلاث مراحل وهناك أسئلة ستقوم بقراءة المطلوب من كل سؤال ثم تكتب الإجابات علي كل سؤال،  وكلما انتهيت من مرحلة ستنتقل إلى المرحلة التي تليها وهكذا حتى تنتهي من المراحل. \n  للتأكد من صحة إجاباتك بإمكانك الانتقال إلى الإجابات النموذجية. \n بعد الانتهاء من جميع تدريبات البرنامج ستقوم بأداء اختبار ختامي.',
              image: buildImage('assets/howtowork.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'انطلق عزيزي الطالب لاكتشاف برنامج كواكب الإبداع ',
              // body: 'هيا',
              bodyWidget: ButtonWidget(
                text: 'هيا لنبدأ',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/planets.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('متابعة', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          // showSkipButton: true,
          showBackButton: true,
          back: Icon(Icons.arrow_back),
          // skip: Text('تخطي'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          // skipFlex: 0,

          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => WelcomeScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 200));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 25),
        bodyPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: kSecondaryColor,
        bodyFlex: 3,
      );
}
