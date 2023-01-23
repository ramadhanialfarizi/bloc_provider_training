import 'package:bloc_provider_training/bloc/bloc_state.dart';
import 'package:bloc_provider_training/screen/widget/number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Provider'),
        centerTitle: true,
      ),
      body: NumberWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*
           untuk mengambil data dari state management bloc bisa menggunakan :
           - context.read<Counter>();
           - BlocProvider.of<Counter>(context);
           */

          // bisa begini
          context.read<Counter>().increment();

          // atau bisa begini
          //BlocProvider.of<Counter>(context).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
    );
  }
}
