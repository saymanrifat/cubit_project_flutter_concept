import 'package:cubit_project_flutter/cubits/internet_cubti.dart';
import 'package:cubit_project_flutter/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        home: HomePages(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
