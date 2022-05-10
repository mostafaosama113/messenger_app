import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:messenger_app/shared/contants/color_manger.dart';
import 'package:messenger_app/shared/contants/values_manger.dart';
import 'package:messenger_app/shared/widgets/btn.dart';
import 'package:provider/provider.dart';
import '../../shared/widgets/input_feild.dart';
import 'auth_manger.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key) {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(),
        body: Consumer<AuthProvider>(
          builder: (context, model, child) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Lottie.asset(
                          'assets/lottie/login.json',
                          height: MediaQuery.of(context).size.height * .4,
                          repeat: false,
                        ),
                      ),
                      inputField(
                        hint: 'Email',
                        prefixIcon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                      ),
                      inputField(
                        hint: 'Password',
                        prefixIcon: Icons.lock,
                        isPass: true,
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: AppHeight.h30),
                      btn(
                        text: 'Login',
                        onClick: () => model.login(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                      ),
                    ],
                  ),
                ),
                if (model.isLoading)
                  Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Material(
                        elevation: 2,
                        child: Container(
                          color: ColorManger.white,
                          height: AppHeight.h100,
                          width: AppWidth.w100,
                          child: Lottie.asset(
                            'assets/lottie/loading.json',
                            height: AppHeight.h100,
                            width: AppWidth.w100,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
