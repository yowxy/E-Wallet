import "package:another_flushbar/flushbar.dart";
import "package:e_wallet/shared/theme.dart";
import "package:flutter/material.dart";

void ShowSnackBar(BuildContext context,String message){
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}

void ShowSnackBarrr(BuildContext context,String message){
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: greenColor,
    duration: const Duration(seconds:2),
  ).show(context);
}