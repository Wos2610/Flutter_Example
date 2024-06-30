import 'package:dio_example/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<HomeBloc>(),
      child: const HomePageUI(),
    );
  }
}

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: BlocConsumer<HomeBloc, HomeState>(
          builder: (BuildContext context, HomeState state) {
              return Column(
                children: [
                  const Text('Upload Image To Server'),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(UploadImage());
                    },
                    child: const Text('Upload'),
                  ),
                ],
              );
          },
          listener: (BuildContext context, HomeState state) {
            if (state is HomeUploadFileSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state is HomeUploadFileFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
        ),
      ),
    );
  }

}
