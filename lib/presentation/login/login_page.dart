import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/utils/constants.dart';
import '../../common/utils/image_loader.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final FocusNode _emailFocusNode;
  late final TextEditingController _passwordController;
  late final FocusNode _passwordFocusNode;

  Color prefixIconColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();

    _emailFocusNode.addListener(() {
      setState(() {
        prefixIconColor = _emailFocusNode.hasFocus ? Colors.red : Colors.grey;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageLoader.asset(
                        'Logo.png',
                        width: 42,
                        height: 42,
                      ),
                      const SizedBox(width: 8.0),
                      Text('SIMS PPOB', style: Constants.boldStyle),
                    ],
                  ),
                ),
                const SizedBox(height: 42.0),
                Text(
                  'Masuk atau buat akun untuk memulai',
                  style: Constants.boldStyle.copyWith(fontSize: 26),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 42.0),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _key,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          focusNode: _emailFocusNode,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            prefixIcon: const Icon(
                              Icons.alternate_email,
                            ),
                            prefixIconColor: Colors.grey,
                            hintText: 'masukan email anda',
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        TextFormField(
                          controller: _passwordController,
                          focusNode: _passwordFocusNode,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            prefixIcon: const Icon(
                              Icons.lock_open_outlined,
                            ),
                            prefixIconColor: Colors.grey,
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_outlined),
                            ),
                            suffixIconColor: Colors.grey,
                            hintText: 'masukan password anda',
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(height: 64.0),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Constants.primaryRed)),
                            child: Text(
                              'Masuk',
                              style: Constants.semiBoldStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('belum punya akun? registrasi',
                          style: Constants.regulerStyle),
                      const SizedBox(width: 4.0),
                      GestureDetector(
                        onTap: (){
                          context.go('/registration');
                        },
                        child: Text(
                          'di sini',
                          style: Constants.boldStyle.copyWith(
                            color: Constants.primaryRed,
                            fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
