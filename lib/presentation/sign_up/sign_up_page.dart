import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/sign_up_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<SignUpBloc>(),
      child: SignUpPageUI(
        usernameController: usernameController,
        passwordController: passwordController,
        emailController: emailController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
  }
}

class SignUpPageUI extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController emailController;

  const SignUpPageUI({Key? key, required this.usernameController, required this.passwordController, required this.emailController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      body: Center(
        child: BlocConsumer<SignUpBloc, SignUpState>(
          builder: (BuildContext context, SignUpState state) {
            if (state is SignUpLoading) {
              return const CircularProgressIndicator();
            } else if (state is SignUpLoaded || state is SignUpFailure) {
              return Column(
                children: [
                  Row(
                    children: [
                      const Text('Username:'),
                      Expanded(
                        child: TextField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your username',
                          ),
                          onChanged: (value) {
                            context.read<SignUpBloc>().add(UsernameChanged(value));
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
                            context.read<SignUpBloc>().add(PasswordChanged(value));
                          },
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Fullname: string'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Date of birth: 2024-03-24T00:24:50.332Z'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Phone number: string'),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Email'),
                      Expanded(
                        child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your email',
                          ),
                          onChanged: (value) {
                            context.read<SignUpBloc>().add(EmailChanged(value));
                          },
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Avatar: string'),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<SignUpBloc>().add(SignUpButtonPressed());
                    },
                    child: const Text("Sign Up"),
                  ),
                ],
              );
            } else {
              return const Text('Invalid State');
            }
          },
          listener: (BuildContext context, SignUpState state) {
            if (state is SignUpLoaded) {
              usernameController.text = state.username;
              passwordController.text = state.password;
            }
            else if (state is SignUpFailure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
              print(state.error);
            }
            else if (state is SignUpSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign Up Success")));
              Navigator.of(context).pop(state.user.email);
            }
          },
        ),
      ),
    );
  }
}