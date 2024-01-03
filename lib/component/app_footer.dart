import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: 130,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '© FoodGram 2023. All Rights Reserved.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      final url = Uri.parse(
                        'https://www.notion.so/a0ad75abf8244404b7a19cca0e2304f1?pvs=4',
                      );
                      launchUrl(url);
                    },
                    child: const Text(
                      '利用規約',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final url = Uri.parse(
                        'https://www.notion.so/fd5584426bf44c50bdb1eb4b376d165f?pvs=4',
                      );
                      launchUrl(url);
                    },
                    child: const Text(
                      'プライバシーポリシー',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final url = Uri.parse(
                        'https://www.notion.so/FootGramFAQ-256ae853b9ec4209a04f561449de8c1d?pvs=4',
                      );
                      launchUrl(url);
                    },
                    child: const Text(
                      'FAQ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
