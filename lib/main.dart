import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite_database_example/page/notes_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primaryColor: Colors.black,
          // scaffoldBackgroundColor: Colors.blueGrey.shade900,
          scaffoldBackgroundColor: Colors.grey.shade300,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade800,
            elevation: 0,
          ),
        ),
        home: NotesPage(),
      );
}