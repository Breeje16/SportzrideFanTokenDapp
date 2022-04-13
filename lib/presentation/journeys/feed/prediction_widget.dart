import 'package:flutter/material.dart';
import 'package:sportzride/presentation/journeys/feed/prediction_card_widget.dart';

class PredictionWidget extends StatefulWidget {
  const PredictionWidget({Key? key}) : super(key: key);

  @override
  _PredictionWidgetState createState() => _PredictionWidgetState();
}

class _PredictionWidgetState extends State<PredictionWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PredictionCardWidget(),
          PredictionCardWidget(),
        ],
      ),
    );
  }
}
