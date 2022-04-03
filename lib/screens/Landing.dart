import 'package:artem_web/services/gradients.dart';
import 'package:artem_web/widgets/artem_logo.dart';
import 'package:artem_web/widgets/fyto_pool_button.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const ArtemLogo(),
        leadingWidth: 350,
        toolbarHeight: 80,
        actions: const [
          FytoPoolButton(),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: gradientSwitch(context),
        ),
        child: const Center(
          child: Text(
            'here',
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
