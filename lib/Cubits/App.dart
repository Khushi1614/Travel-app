import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mountain/Cubits/AppState.dart';
import 'package:mountain/Screen/MyHomePage.dart';
import 'package:mountain/Screen/Navbar/main_page.dart';

import '../Screen/HomePage.dart';
import '../Screen/detailPage/detail_page.dart';
import 'AppCubit.dart';

class FinalApp extends StatefulWidget {
  const FinalApp({Key? key}) : super(key: key);

  @override
  State<FinalApp> createState() => _FinalAppState();
}

class _FinalAppState extends State<FinalApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          if (state is WelcomeState ) {
            return MyHomePage();
          }
          if (state is DetailState ) {
            return DetailPage();
          }
          if (state is LoadingState ) {
            return Center(child: CircularProgressIndicator(),);
          }
          if (state is LoadedState ) {
            return MainPage();
          }else {
            return Container();
          }
        },
      ),
    );
  }
}
