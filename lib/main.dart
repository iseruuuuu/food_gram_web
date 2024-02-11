import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_gram_web/component/app_contents.dart';
import 'package:food_gram_web/component/app_footer.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDD0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app.png',
              width: MediaQuery.sizeOf(context).width,
            ),
            Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 100,
              children: [
                GestureDetector(
                  onTap: () async {
                    launchUrl(Uri.parse(
                        'https://apps.apple.com/vn/app/foodgram/id6474065183'));
                  },
                  child: SvgPicture.asset(
                    'assets/images/app_download.svg',
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            const Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 100,
              children: [
                AppContents(
                  icon: Icons.fastfood,
                  title: '美味しかった食事を共有',
                  subTitle: 'あなたの自慢の一品を世界中に共有しよう!\n',
                  image: 'assets/images/food1.png',
                ),
                AppContents(
                  icon: Icons.check_circle_outline,
                  title: '世界中の食べ物を知ろう!',
                  subTitle: 'このアプリで様々な人の美味しいものを知ろう\n'
                      '新しい食事の発見にもつながるかもしれません。',
                  image: 'assets/images/food2.png',
                ),
                AppContents(
                  icon: Icons.fastfood,
                  title: 'あなただけのFoodアルバムを作る',
                  subTitle: 'あなた専用のFoodアルバムを作ろう\n'
                      '食べた食事も記録することができます。',
                  image: 'assets/images/food3.png',
                ),
              ],
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
