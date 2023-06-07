import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CardScreen')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imgeURL: "https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000", name: "Un hermoso paisaje",),
          SizedBox(height: 20),
          CustomCardType2(imgeURL: "https://images.theoutbound.com/uploads/1467254193093/trux335e7ki0w9vl/a81998d93544091aa62ab347a21075e3?&fit=crop&w=970&q=60", name: "Un hermoso paisaje",),
          SizedBox(height: 20),
          CustomCardType2(imgeURL: "https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6.jpg?w=1272&h=954", name: "Otro hermoso paisaje",),
          SizedBox(height: 20),
          CustomCardType2(imgeURL: "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg"),
          SizedBox(height: 20),
          CustomCardType2(imgeURL: "https://hips.hearstapps.com/hmg-prod/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png",),
          SizedBox(height: 200),
        ],
      )
    );
  }
}
