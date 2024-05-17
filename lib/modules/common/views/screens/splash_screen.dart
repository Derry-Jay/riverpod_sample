import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../extensions/extensions.dart';
import '../../../../utils/enums.dart';
import '../../../../utils/methods.dart';
import '../../../../utils/values.dart';
import '../widgets/circular_loader.dart';
import '../widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: const Text('My App'),
                foregroundColor: Colors.white,
                backgroundColor: '#eb4034'.getColorFromHex()),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(
                  onPressed: () async {
                    const chennai = LatLng(13.0827, 80.2707),
                        tuty = LatLng(8.7642, 78.1348);
                    jot(tuty.haversineDistanceTo(chennai).toStringAsFixed(3));
                    jot(await dip.isRealDevice);
                  },
                  type: ButtonType.border,
                  child: const Text('My App')),
              const CircularLoader(loaderType: LoaderType.waveSpinner)
            ])));
  }
}
