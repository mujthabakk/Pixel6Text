import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pixel6_machine_test/service/user_service.dart';
import 'package:pixel6_machine_test/view/pages/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    UserService().getUser();
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
