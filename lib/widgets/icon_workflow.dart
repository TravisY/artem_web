import 'package:artem_web/services/artem_web_icons.dart';
import 'package:artem_web/services/brightness_check.dart';
import 'package:artem_web/services/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

enum WorkflowStep {
  cardano,
  ipfs,
  share,
}

class IconWorkflow extends StatelessWidget {
  const IconWorkflow({Key? key}) : super(key: key);

  Widget arrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Transform.rotate(
        angle: ResponsiveWidget.isSmallScreen(context) ? 90 * math.pi / 180 : 0,
        child: Icon(
          Icons.arrow_forward_rounded,
          color: colorSelector(context),
          size: 60,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const IconWorkFlowSwitch(step: WorkflowStep.cardano),
          arrow(context),
          const IconWorkFlowSwitch(step: WorkflowStep.ipfs),
          arrow(context),
          const IconWorkFlowSwitch(step: WorkflowStep.share),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const IconWorkFlowSwitch(step: WorkflowStep.cardano),
          arrow(context),
          const IconWorkFlowSwitch(step: WorkflowStep.ipfs),
          arrow(context),
          const IconWorkFlowSwitch(step: WorkflowStep.share),
        ],
      ),
    );
  }
}

class IconWorkFlowSwitch extends StatelessWidget {
  const IconWorkFlowSwitch({Key? key, required this.step}) : super(key: key);

  final WorkflowStep step;

  @override
  Widget build(BuildContext context) {
    switch (step) {
      case WorkflowStep.cardano:
        return _item(
            context, 'Access your NFTs', ArtemWeb.cardano_logo_svgrepo_com);
      case WorkflowStep.ipfs:
        return _item(context, 'Export from IPFS', ArtemWeb.ipfs_svgrepo_com);
      case WorkflowStep.share:
        return _item(context, 'Store and share', Icons.wallpaper_sharp);
    }
  }

  Widget _item(BuildContext context, String text, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: colorSelector(context),
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: GoogleFonts.roboto(
            color: colorSelector(context),
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
