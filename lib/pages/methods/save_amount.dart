import 'package:flutter/cupertino.dart';

class Saves {
  TextEditingController temp = TextEditingController();
  bool isComplete = false;
  int val = 0;
  int savedAmount(String amount) {
    val = int.parse(amount);

    return val;
  }
}
