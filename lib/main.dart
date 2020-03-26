import 'package:app/pages/splash.dart';
import 'package:app/pages/welcome.dart';
import 'package:app/provider_utils/collor_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ColorNotifier(),)
      ],
      child: Consumer<ColorNotifier>(
        builder: (context, color, _){
          return  MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/' : (context) => SplashPage(),
              '/welcome': (context) => WelcomePage()
            },
          );
        },
      ),
    );
  }
}


