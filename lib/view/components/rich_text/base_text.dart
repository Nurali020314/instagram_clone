import 'package:flutter/foundation.dart' show VoidCallback, immutable;
import 'package:flutter/material.dart' show TextStyle, Colors, TextDecoration;

import 'link_text.dart';

@immutable
class BaseText {
  final String text;
  final TextStyle? style;

  const BaseText({
    required this.text,
    this.style,
  });

  factory BaseText.plain({
    required String text,
    TextStyle? style = const TextStyle(),
  }) =>
      BaseText(style: style, text: text);



  factory BaseText.link({
    required String text,
    required VoidCallback onTapped,
    TextStyle? style = const TextStyle(
      color: Colors.blue,
      decoration:TextDecoration.underline
    ),
  }) =>
      LinkText(
          style: style,
          onTapped: onTapped,
          text: text);

}
