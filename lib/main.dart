import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Spanish
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // onGenerateRoute: ( RouteSettings settings ){

      //   print('Ruta llamada: ${ settings.name }');

      //   return MaterialPageRoute(
      //     // builder: (BuildContext context) => CardPage()
      //   );

      // },
    );
  }
}

