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
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
            'Rizki Rachmanudin'.length > 15
                ? '${'Rizki Rachmanudin'.substring(0, 10)}....'
                : 'Rizki Rachmanudin',
            style: Constants.boldStyle,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
          const SizedBox(height: 24.0),
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ImageLoader.assetImage('background_saldo.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saldo anda',
                    style: Constants.regulerStyle.copyWith(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Text(
                        'Rp',
                        style: Constants.boldStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        '0',
                        style:
                            Constants.boldStyle.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    height: 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Lihat saldo',
                          style: Constants.regulerStyle
                              .copyWith(color: Colors.white),
                        ),
                        IconButton(
                          padding: const EdgeInsets.all(2),
                          iconSize: 14.0,
                          alignment: Alignment.topLeft,
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          _productView()

        ],
      ),
    );
  }

  _productView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:6,
        crossAxisSpacing: 2,
        mainAxisSpacing: 25,
        childAspectRatio: 0.6
      ),
      shrinkWrap: true,
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return _productItem(index);
      },
    );
  }

  _productItem(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.grey.shade200,
          child: Image.network('${dummyData[index]['service_icon']}'),
        ),
       const SizedBox(height: 5),
        Flexible(
          child: Text('${dummyData[index]['service_name']}', style: Constants.semiBoldStyle.copyWith(
            fontSize: 12
          ),),
        )
      ],
    );
  }
}

List<Map<String, dynamic>> dummyData = [
  {
    "service_code": "PAJAK",
    "service_name": "Pajak PBB",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 40000
  },
  {
    "service_code": "PLN",
    "service_name": "Listrik",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 10000
  },
  {
    "service_code": "PDAM",
    "service_name": "PDAM Berlangganan",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 40000
  },
  {
    "service_code": "PULSA",
    "service_name": "Pulsa",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 40000
  },
  {
    "service_code": "PGN",
    "service_name": "PGN Berlangganan",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 50000
  },
  {
    "service_code": "MUSIK",
    "service_name": "Musik Berlangganan",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 50000
  },
  {
    "service_code": "TV",
    "service_name": "TV Berlangganan",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 50000
  },
  {
    "service_code": "PAKET_DATA",
    "service_name": "Paket data",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 50000
  },
  {
    "service_code": "VOUCHER_GAME",
    "service_name": "Voucher Game",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 100000
  },
  {
    "service_code": "VOUCHER_MAKANAN",
    "service_name": "Voucher Makanan",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 100000
  },
  {
    "service_code": "QURBAN",
    "service_name": "Qurban",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 200000
  },
  {
    "service_code": "ZAKAT",
    "service_name": "Zakat",
    "service_icon": "https://nutech-integrasi.app/dummy.jpg",
    "service_tariff": 300000
  }
];
