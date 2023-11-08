import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        body: Builder(builder: (context) {
          return Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAA2920),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const CustomAlertDialog(),
                  );
                },
                child: const Text(
                  'Open dialog',
                  style: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )),
          );
        }),
      ),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.26,
            width: MediaQuery.of(context).size.width * 0.87,
            decoration: BoxDecoration(
                color: const Color(0xFF2F3031),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Хотите выйти?',
                    style: TextStyle(
                        color: Color(0xFFD9D9D9),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Вы действительно хотите выйти?\nВсе текущие настройки кода будут удалены',
                    style: TextStyle(
                        color: Color(0xFFD9D9D9),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF505050),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Text(
                            'Отмена',
                            style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFAA2920),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Text(
                            'Настройки',
                            style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
