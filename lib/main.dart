import 'package:flutter/material.dart';
import 'package:conversor/app/views/home_view.dart';
import 'package:conversor/app/controllers/home_controller.dart';

void main() {
  final toText = TextEditingController();
  final fromText = TextEditingController();

  final homeController = HomeController(
    toText: toText,
    fromText: fromText,
  );

  runApp(const AppWidget());
     HomeView(
      homeController: homeController,
      toText: toText,
      fromText: fromText,
    );
}


class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();

  late HomeController homeController = HomeController(
    toText: toText,
    fromText: fromText,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(
        homeController: homeController,
        fromText: fromText,
        toText: toText,
      ),
    );
  }
}
