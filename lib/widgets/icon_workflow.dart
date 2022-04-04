import 'package:flutter/material.dart';

enum WorkflowStep {
  cardano,
  ipfs,
  share,
}

class IconWorkflow extends StatelessWidget {
  const IconWorkflow({Key? key}) : super(key: key);

  Widget arrow(BuildContext context) {
    return Icon(
      Icons.arrow_forward_rounded,
      color: Theme.of(context).colorScheme.primary,
      size: 60,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const IconWorkFlowSwitch(step: WorkflowStep.cardano),
        arrow(context),
        const IconWorkFlowSwitch(step: WorkflowStep.ipfs),
        arrow(context),
        const IconWorkFlowSwitch(step: WorkflowStep.share),
      ],
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
        return _item(context, 'Access your NFTs', Icons.network_ping_sharp);
      case WorkflowStep.ipfs:
        return _item(context, 'Export from IPFS', Icons.download);
      case WorkflowStep.share:
        return _item(context, 'Store and share', Icons.mobile_screen_share);
    }
  }

  Widget _item(BuildContext context, String text, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 24,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
