import 'package:wondereng_shopping_mall/core/components/messages/message.dart';
import 'package:wondereng_shopping_mall/theme/theme_variation_type.dart';
import 'package:flutter/material.dart';

class MessageHelper {
  static void show(
      {
      //Key key,
      final String? title,
      required final String message,
      final String? sumbitButtonTitle,
      final Function(bool)? onTapSubmitCallback,
      required final BuildContext context,
      final bool? isDismissible,
      final bool? isDraggable,
      final ThemeVariationType? themeVariationType}) {
    //WidgetsBinding.instance.addPostFrameCallback((_) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isDismissible: isDismissible ?? false,
        enableDrag: isDraggable ?? false,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(isDismissible ?? false);
            },
            child: Message(
              //key : key,
              title: title,
              message: message,
              sumbitButtonTitle: sumbitButtonTitle,
              onTapSubmitCallback: onTapSubmitCallback,
              parentContext: context,
              themeVariationType: themeVariationType,
            ),
          );
        });
    //});
  }
}
