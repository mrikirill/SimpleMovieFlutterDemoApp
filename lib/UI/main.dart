import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_movie/UI/Screens/MovieDetail/MovieDetail.dart';
import 'package:simple_movie/UI/Screens/PopularMovies/PopularMovies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarIconBrightness: Brightness.dark));

    return GetMaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan[600]),
        ),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        initialRoute: "/",
        getPages: [
          GetPage(name: '/', page: () => PopularMoviesScreen()),
          GetPage(name: '/detail', page: () => MovieDetailScreen()),
        ]);
  }
}
