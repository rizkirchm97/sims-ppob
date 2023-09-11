import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/utils/constants.dart';
import '../../common/utils/image_loader.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _emailController;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  _buildBody() {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const SizedBox(height: 24.0),
                Text(
                  'Lengkapi data untuk membuat akun',
                  style: Constants.boldStyle.copyWith(fontSize: 26),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            hintText: 'masukan email anda',
                            prefixIcon: const Icon(Icons.alternate_email),
                            prefixIconColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        TextFormField(
                          controller: _firstNameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            hintText: 'nama depan',
                            prefixIcon: const Icon(Icons.person_2_outlined),
                            prefixIconColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        TextFormField(
                          controller: _lastNameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            hintText: 'nama belakang',
                            prefixIcon: const Icon(Icons.person_2_outlined),
                            prefixIconColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            hintText: 'buat password',
                            prefixIcon: const Icon(Icons.lock_open_outlined),
                            prefixIconColor: Colors.grey,
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_outlined),
                            ),
                            suffixIconColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        TextFormField(
                          controller: _confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: Constants.inputDecoration.copyWith(
                            hintText: 'konfirmasi password',
                            prefixIcon: const Icon(Icons.lock_open_outlined),
                            prefixIconColor: Colors.grey,
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_outlined),
                            ),
                            suffixIconColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Constants.primaryRed)),
                            child: Text(
                              'Registrasi',
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
                      Text('sudah punya akun? login',
                          style: Constants.regulerStyle),
                      const SizedBox(width: 4.0),
                      GestureDetector(
                        onTap: (){
                          context.go('/login');
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
