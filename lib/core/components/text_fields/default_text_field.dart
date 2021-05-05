import 'package:wondereng_shopping_mall/theme/bloc/app_theme_config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DefaultTextField extends StatelessWidget {
  final Key? key;
  final String? initialValue;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? border;
  final String? hintText;
  final EdgeInsets? contentPadding;
  final bool? isDense;
  final bool isValid;
  final String? validationMessage;
  final String? labelText;
  final TextStyle? labelStyle;
  final Function(String?) setValue;
  final DefaultTextFieldLabelPosition? labelPosition;

  DefaultTextField(
      {this.key,
      this.initialValue,
      this.focusNode,
      this.decoration,
      this.keyboardType,
      this.textCapitalization = TextCapitalization.none,
      this.textInputAction,
      this.style,
      this.strutStyle,
      this.textDirection,
      this.textAlign = TextAlign.start,
      this.textAlignVertical,
      this.autofocus = false,
      this.readOnly = false,
      this.toolbarOptions,
      this.showCursor,
      this.obscuringCharacter = '•',
      this.obscureText = false,
      this.autocorrect = true,
      this.smartDashesType,
      this.smartQuotesType,
      this.enableSuggestions = true,
      this.maxLines = 1,
      this.minLines,
      this.expands = false,
      this.maxLength,
      this.onChanged,
      this.onTap,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.validator,
      this.inputFormatters,
      this.enabled,
      this.cursorWidth = 2.0,
      this.cursorHeight,
      this.cursorRadius,
      this.cursorColor,
      this.keyboardAppearance,
      this.scrollPadding = const EdgeInsets.all(20.0),
      this.enableInteractiveSelection = true,
      this.selectionControls,
      this.buildCounter,
      this.scrollPhysics,
      this.autofillHints,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.focusedBorder,
      this.errorBorder,
      this.border,
      this.hintText,
      this.contentPadding,
      this.isDense,
      required this.isValid,
      this.validationMessage,
      this.labelText,
      this.labelStyle,
      required this.setValue,
      this.labelPosition = DefaultTextFieldLabelPosition.top});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _topLabel(),
        _textField(),
      ],
    );
  }

  Widget _topLabel() {
    return BlocBuilder<AppThemeConfigBloc, AppThemeConfigState>(
        builder: (context, state) {
      return labelPosition == DefaultTextFieldLabelPosition.top
          ? Text(
              labelText ?? 'Field Label',
              style: state.themeConfig.theme.typography.black.subtitle2
                  ?.copyWith(
                      color:
                          state.themeConfig.colors.defaultTextFieldLabelColor),
            )
          : Container();
    });
  }

  Widget _textField() {
    return BlocBuilder<AppThemeConfigBloc, AppThemeConfigState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TextFormField(
            key: key,
            initialValue: initialValue,
            focusNode: focusNode,
            decoration: decoration ??
                InputDecoration(
                  labelText:
                      labelPosition == DefaultTextFieldLabelPosition.inline
                          ? (labelText ?? 'Field Label')
                          : '',
                  labelStyle: labelStyle ??
                      state.themeConfig.theme.typography.black.subtitle2
                          ?.copyWith(
                              color: state.themeConfig.colors
                                  .defaultTextFieldLabelColor),
                  focusedBorder: focusedBorder ??
                      OutlineInputBorder(
                        borderSide: BorderSide(
                            color: state.themeConfig.colors
                                .defaultTextFieldFocusedBorderColor,
                            width: 2.0),
                      ),
                  errorBorder: errorBorder ??
                      OutlineInputBorder(
                        borderSide: BorderSide(
                            color: state.themeConfig.colors
                                .defaultTextFieldErrorBorderColor,
                            width: 2.0),
                      ),
                  border: border ??
                      OutlineInputBorder(
                        borderSide: BorderSide(
                            color: state
                                .themeConfig.colors.defaultTextFieldBorderColor,
                            width: 2.0),
                      ),
                  hintText: hintText ?? '',
                  isDense: isDense ?? true,
                  contentPadding: contentPadding ??
                      EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: labelPosition ==
                                      DefaultTextFieldLabelPosition.top ||
                                  labelPosition ==
                                      DefaultTextFieldLabelPosition.none
                              ? 10
                              : 14),
                ),
            keyboardType: keyboardType,
            textCapitalization: textCapitalization,
            textInputAction: textInputAction ?? TextInputAction.next,
            style: style,
            strutStyle: strutStyle,
            textDirection: textDirection,
            textAlign: textAlign,
            textAlignVertical: textAlignVertical,
            autofocus: autofocus,
            readOnly: readOnly,
            toolbarOptions: toolbarOptions,
            showCursor: showCursor,
            obscuringCharacter: obscuringCharacter,
            obscureText: obscureText,
            autocorrect: autocorrect,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            enableSuggestions: enableSuggestions,
            maxLines: maxLines,
            minLines: minLines,
            expands: expands,
            maxLength: maxLength,
            onChanged: (value) => setValue(value),
            onTap: onTap,
            onEditingComplete:
                onEditingComplete ?? () => FocusScope.of(context).nextFocus(),
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            validator: (value) => isValid ? null : validationMessage,
            inputFormatters: inputFormatters,
            enabled: enabled,
            cursorWidth: cursorWidth,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorColor: cursorColor,
            keyboardAppearance: keyboardAppearance,
            scrollPadding: scrollPadding,
            enableInteractiveSelection: enableInteractiveSelection,
            selectionControls: selectionControls,
            buildCounter: buildCounter,
            scrollPhysics: scrollPhysics,
            autofillHints: autofillHints,
            autovalidateMode: autovalidateMode,
          ),
        );
      },
    );
  }
}

enum DefaultTextFieldLabelPosition { top, inline, none }
