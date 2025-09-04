import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hibuy/Bloc/bottomnavbar_bloc/bottom_nav_bloc.dart';

import 'package:hibuy/Bloc/profile_bloc.dart/steptile_bloc/steptile_bloc.dart';

import 'package:hibuy/res/routes/routes.dart';
import 'package:hibuy/res/routes/routes_name.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [

         BlocProvider(create: (_) => StepBloc()),
         BlocProvider(create: (_) => BottomNavBloc()),
       
      ],
      child: const MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HiBuy',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,

      // 🔑 Important for DevicePreview
      // useInheritedMediaQuery: true,
      // builder: DevicePreview.appBuilder,
      // locale: DevicePreview.locale(context),

      initialRoute: RoutesName.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

