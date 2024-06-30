import 'package:dio_example/data/native/native_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/log_in_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();

}

class LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<LoginBloc>(),
      child: LoginPageUI(
        usernameController: usernameController,
        passwordController: passwordController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }
}

class LoginPageUI extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const LoginPageUI({super.key, required this.usernameController, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: BlocConsumer<LoginBloc, LoginState>(
            builder: (BuildContext context, LoginState state) {
              print("state: $state");
              if(state is LoginLoading){
                return const CircularProgressIndicator();
              }
              else if(state is LoginLoaded || state is LoginFailure || state is LoginSuccess){
                return Column(
                  children: [
                    Row(
                      children: [
                        const Text('Email:'),
                        Expanded(
                          child: TextField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your email',
                            ),
                            onChanged: (value) {
                              context.read<LoginBloc>().add(EmailChanged(value));
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Password:'),
                        Expanded(
                          child: TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your password',
                            ),
                            onChanged: (value) {
                              context.read<LoginBloc>().add(PasswordChanged(value));
                            },
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<LoginBloc>().add(LoginButtonPressed());
                      },
                      child: const Text("Login"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final result = await Navigator.of(context).pushNamed("/signUp") as String;
                        if(result != null){
                          if(context.mounted){
                            context.read<LoginBloc>().add(EmailChanged(result));
                          }
                        }
                      },
                      child: const Text("Sign Up"),
                    ),
                  ],
                );
              }
              else {
                return Container();
              }
            },
            listener: (BuildContext context, LoginState state) {
              if(state is LoginLoaded){
                usernameController.text = state.email;
                passwordController.text = state.password;
              }
              else if(state is LoginFailure){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
              }
              else if(state is LoginSuccess){
                Navigator.of(context).pushNamed("/home");
                // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Successfully")));
              }
            },

          )
      ),
    );
  }
}