import 'package:flutter/material.dart';
import 'package:movieapp/core/routes/AppRouter.dart';
import 'package:movieapp/core/routes/PageRouteNames.dart';

import 'core/theme/ThemeManager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Thememanager.getAppTheme(),
      initialRoute: Pageroutenames.updateScreen,
      onGenerateRoute: Approuter.onGenrateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}

