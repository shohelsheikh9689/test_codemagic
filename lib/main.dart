import 'package:bloc_login/router/app_router.dart';
import 'package:bloc_login/router/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/business_logic/login_bloc/login_bloc.dart';
import 'package:bloc_login/business_logic/product_list_bloc/productlist_bloc.dart';
import 'package:bloc_login/presentation/screens/product_list_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'presentation/screens/screens.dart';

import 'package:bloc_login/router/app_router1.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SharedPreferences prefs;
  String? token;
  String? mobileNo;
  late final AppRouter appRouter;


  @override
  void initState() {
    super.initState();
    initVariables();
  }

  void initVariables() async {
    prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
    mobileNo = prefs.getString("mobile_no");
    setState(() {});
    // prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductlistBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
      ],
      child: const MaterialApp(
        onGenerateRoute: router.generateRoute,
        initialRoute: loginScreenRoute,
        title: "Test Bloc",
      ),


    );
  }
}
