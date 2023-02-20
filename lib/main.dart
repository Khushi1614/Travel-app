import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mountain/Cubits/AppCubit.dart';
import 'package:mountain/Networks/DataServices.dart';
import 'package:mountain/Screen/MyHomePage.dart';
import 'package:mountain/Screen/detailPage/detail_page.dart';

import 'Cubits/App.dart';
import 'Screen/Navbar/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(data: DataServices()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FinalApp(),
      ),
    );
  }
}

