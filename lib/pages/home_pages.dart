import 'package:cubit_project_flutter/cubits/internet_cubti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: BlocConsumer<InternetCubit, InternetState>(
              builder: (context, state) {
                if (state == InternetState.Gained) {
                  return const Text("Connected");
                } else if (state == InternetState.Lost) {
                  return const Text("Disconnected");
                } else {
                  return const Text("Loading...");
                }
              },
              listener: (context, state) {
                if (state == InternetState.Gained) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Connected'),
                    backgroundColor: Colors.green,
                  ));
                } else if (state == InternetState.Lost) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Disconnected'),
                    backgroundColor: Colors.red,
                  ));
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('Loading..')));
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
