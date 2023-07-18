import 'package:flutter/cupertino.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:get/get.dart';

class AuthVerifyOtpController extends GetxController {
  //TODO: Implement AuthVerifyOtpController

  CountdownTimerController? controller;

  var isTimerStarted=false.obs;
  var isButtonEnabled=false.obs;

  void shouldShowTimerFunction(bool val){
    isTimerStarted.value=val;
  }

  void buttonStatus(bool val){
    isButtonEnabled.value=val;
  }

  /// Pin code Controller
  final TextEditingController pincodeController = TextEditingController();

  /// endTime
  int? _endTime;

  /// Count Down Timer
  CountdownTimerController? _timerController;

  /// Time Duration
  final int _timerDurationInSeconds = 60;

  /// Method used to remove countdown timer.
  void _removeCountDownTimer() {
    Future.delayed(Duration(seconds: _timerDurationInSeconds)).then((value) {
      shouldShowTimerFunction(false);
    });
  }


  @override
  void onInit() {
    super.onInit();
    _endTime = DateTime.now()
        .add(Duration(seconds: _timerDurationInSeconds))
        .millisecondsSinceEpoch;
    _timerController = CountdownTimerController(endTime: _endTime!);
    shouldShowTimerFunction(true);
    _removeCountDownTimer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
