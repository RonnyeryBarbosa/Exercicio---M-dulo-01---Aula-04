import 'package:flutter/material.dart';

class ButtonDefault extends FloatingActionButton {
  var icon;
  var action;

  ButtonDefault(this.icon, this.action);
  @override
  Widget get child => icon;

  @override
  get onPressed => action;
}
