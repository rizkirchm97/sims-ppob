import 'package:flutter/material.dart';
import 'package:sims_ppob/common/utils/constants.dart';
import 'package:sims_ppob/common/utils/image_loader.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImageLoader.asset(
                'Logo.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 4.0),
              Text(
                'SIMS PPOB',
                style: Constants.boldStyle.copyWith(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 200,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ImageLoader.asset('profile_photo.png'),
          )
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: CircleAvatar(
          //     backgroundImage: ImageLoader.assetImage('profile_photo.png'),
          //     radius: 15,
          //   ),
          // ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat datang,',
            style: Constants.regulerStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 4.0),
          Text(
            'Rizki Rachmanudin',
            style: Constants.boldStyle,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 24.0),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ImageLoader.assetImage('background_saldo.png'),
                  fit: BoxFit.none),
            ),
          ),
        ],
      ),
    );
  }
}
