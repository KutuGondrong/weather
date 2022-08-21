import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_weather/args/detail_page_args.dart';
import 'package:test_weather/bloc/home_page_bloc.dart';
import 'package:test_weather/bloc/home_page_event.dart';
import 'package:test_weather/data/repository/WeatherRepositoryImpl.dart';
import 'package:test_weather/pages/detail/detail_page.dart';
import 'package:test_weather/pages/home/home_page.dart';
import 'package:test_weather/route.dart';
import 'package:test_weather/utils/const_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomePageBloc(repository: WeatherRepositoryImpl())
            ..add(SearchByLatLongEvent()),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: ConstData.title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: Routes.home,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case Routes.home:
                {
                  return MaterialPageRoute(builder: (_) => const HomePage());
                }
              case Routes.detail:
                {
                  final DetailPageArgs args =
                      settings.arguments as DetailPageArgs;
                  return MaterialPageRoute(
                      builder: (_) => DetailPage(args: args));
                }
              default:
                {
                  assert(false, 'Need to implement ${settings.name}');
                  return null;
                }
            }
          }),
    );
  }
}
