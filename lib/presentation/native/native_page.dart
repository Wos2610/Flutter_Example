
import 'package:dio_example/data/native/open_flutter_view.dart';
import 'package:dio_example/data/native/open_native_view.dart';
import 'package:dio_example/presentation/native/bloc/native_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../data/native/native_view.dart';

class NativePage extends StatefulWidget {
  const NativePage({super.key});

  @override
  State<StatefulWidget> createState() => NativePageState();

}

class NativePageState extends State<NativePage> {
  late String _engineGroup;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<NativeBloc>(),
      child: NativePageUI(
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    OpenFlutterView.platform.setMethodCallHandler((call) => platformCallHandler(call, context));
  }

  static Future<void> platformCallHandler(MethodCall call, BuildContext context) async {
    switch (call.method) {
      case "openFlutterView":
        print("openFlutterView");
        Navigator.of(context).pushNamed("/native");
        break;
      default:
    }
  }
}

class NativePageUI extends StatelessWidget {
  const NativePageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: BlocConsumer<NativeBloc, NativeState>(
            builder: (BuildContext context, NativeState state) {
              print("state: $state");
              if(state is NativeLoaded){
                return Column(
                  children: [
                    Row(
                      children: [
                        Text(
                            state.batteryLevel
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final batteryLevel = await NativeView.showNativeView();
                        if(context.mounted){
                          context.read<NativeBloc>().add(NativeViewButtonPressed(batteryLevel));
                        }
                      },
                      child: const Text("Native View"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        OpenNativeView.openNativeView();
                      },
                      child: const Text("Open Native Screen"),
                    ),
                  ],
                );
              }
              else {
                return Container();
              }
            }, listener: (BuildContext context, NativeState state) {  },
          )
      ),
    );
  }
}