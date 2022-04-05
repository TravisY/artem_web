import 'package:artem_web/services/gradients.dart';
import 'package:artem_web/widgets/artem_logo.dart';
import 'package:artem_web/widgets/fyto_pool_button.dart';
import 'package:artem_web/widgets/icon_workflow.dart';
import 'package:artem_web/widgets/phone_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PhoneImages(),
              const SizedBox(
                height: 40,
              ),
              const IconWorkflow(),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Launching Early May',
                  style: GoogleFonts.roboto(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
