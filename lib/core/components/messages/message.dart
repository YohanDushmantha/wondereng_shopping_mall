import 'package:wondereng_shopping_mall/core/components/buttons/bar_buttons/material_bar_button.dart';
import 'package:wondereng_shopping_mall/theme/bloc/app_theme_config_bloc.dart';
import 'package:wondereng_shopping_mall/theme/theme_variation_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Message extends StatelessWidget {
  final String? title;
  final String message;
  final String? sumbitButtonTitle;
  final Function? onTapSubmitCallback;
  final BuildContext parentContext;
  final bool? isDismissible;
  final ThemeVariationType? themeVariationType;
  const Message(
      {this.title,
      required this.message,
      this.sumbitButtonTitle,
      this.onTapSubmitCallback,
      required this.parentContext,
      this.isDismissible,
      this.themeVariationType = ThemeVariationType.success});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(24.0),
        child: Wrap(
          children: <Widget>[
            _closeIcon(),
            _title(context),
            _message(context),
            _submitButton(context)
          ],
        ),
      ),
    );
  }

  Widget _closeIcon() {
    return BlocBuilder<AppThemeConfigBloc, AppThemeConfigState>(
        builder: (context, state) {
      return isDismissible == true
          ? Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                child: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          : Container();
    });
  }

  Widget _title(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Text(
          title ?? 'Information Message',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        )),
      ),
    );
  }

  Widget _message(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return BlocBuilder<AppThemeConfigBloc, AppThemeConfigState>(
      builder: (context, state) {
        return FractionallySizedBox(
          widthFactor: 1,
          child: MaterialBarButton(
            themeVariationType: themeVariationType!,
            onTap: onTapSubmitCallback != null
                ? () {
                    (onTapSubmitCallback)!();
                    closeCallback();
                  }
                : closeCallback,
          ),
        );
      },
    );
  }

  closeCallback() {
    Navigator.pop(parentContext);
  }
}
