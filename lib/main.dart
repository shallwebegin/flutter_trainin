import 'package:flutter/material.dart';

import 'package:flutter_trainin/202/theme/light_theme.dart';
import 'package:flutter_trainin/303/call_back_learn.dart';
import 'package:flutter_trainin/303/feed_view.dart';
import 'package:flutter_trainin/303/lottie_learn.dart';
import 'package:flutter_trainin/303/navigator/navigate_home_view.dart';
import 'package:flutter_trainin/303/reqrest_resource/view/req_res_view.dart';
import 'package:flutter_trainin/303/tabbar_advance.dart';
import 'package:flutter_trainin/product/constant/project_items.dart';
import 'package:flutter_trainin/product/global/resource_context.dart';
import 'package:flutter_trainin/product/global/theme_notifier.dart';
import 'package:flutter_trainin/product/navigator/navigator_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (_) => ResourceContext(),
      ),
      ChangeNotifierProvider<ThemeNotifier>(
        create: (context) => ThemeNotifier(),
      )
    ],
    builder: (context, child) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectItems.projectName,
      debugShowCheckedModeBanner: false,
      theme: /*ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label),
        bottomAppBarTheme:
            const BottomAppBarTheme(shape: CircularNotchedRectangle()),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),*/
          context.watch<ThemeNotifier>().currentTheme,
      routes: NavigatorRoutes().items,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return const LottieLearn();
          },
        );
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          return MaterialPageRoute(
            builder: (context) {
              return const LottieLearn();
            },
          );
        }
        return null;
      },
      //home: const LottieLearn(),
    );
  }
}
