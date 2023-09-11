import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sims_ppob/common/utils/image_loader.dart';

import '../../common/utils/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        context.go('/login');
      });
    });


    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageLoader.asset('Logo.png'),
            const SizedBox(height: 16.0),
            Text(
              'SIMS PPOB',
              style: Constants.boldStyle.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'RIZKI RACHMANUDIN',
              style: Constants.regulerStyle,
            )
          ],
        ),
      ),
    );
  }
}
