import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:emergency_app_ui/screens/callscreen.dart';
import 'package:flutter/material.dart';

class CcTimer extends StatelessWidget {
  const CcTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 5,
      initialDuration: 0,
      controller: CountDownController(),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      ringColor: Colors.grey[300]!,
      ringGradient: null,
      fillColor: const Color(0xFFEA1C1C),
      fillGradient: null,
      backgroundGradient: null,
      strokeWidth: 20.0,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
        fontSize: 33.0, color: Color(0xFFEA1C1C), fontWeight: FontWeight.bold),
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: false,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: true,
      onStart: () {
        debugPrint('Countdown Started');
      },
      onComplete: () {
        debugPrint('Countdown Ended');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const CallScreen())
        );
      },
      onChange: (String timeStamp) {
        debugPrint('Countdown Changed $timeStamp');
      },
      timeFormatterFunction: (defaultFormatterFunction, duration) {
        if (duration.inSeconds == 0) {
          return "Start";
        } else {
          return Function.apply(defaultFormatterFunction, [duration]);
        }
      },
    );
  }
}