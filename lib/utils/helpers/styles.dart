import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  const TextStyles._();

  // Light
  static final light0 = _baseLight[TextSize.size0];
  static final light1 = _baseLight[TextSize.size1];
  static final light2 = _baseLight[TextSize.size2];
  static final light3 = _baseLight[TextSize.size3];
  static final light4 = _baseLight[TextSize.size4];
  static final light5 = _baseLight[TextSize.size5];
  static final light6 = _baseLight[TextSize.size6];
  static final light7 = _baseLight[TextSize.size7];
  static final light8 = _baseLight[TextSize.size8];

  // Regular
  static final regular0 = _baseRegular[TextSize.size0];
  static final regular1 = _baseRegular[TextSize.size1];
  static final regular2 = _baseRegular[TextSize.size2];
  static final regular3 = _baseRegular[TextSize.size3];
  static final regular4 = _baseRegular[TextSize.size4];
  static final regular5 = _baseRegular[TextSize.size5];
  static final regular6 = _baseRegular[TextSize.size6];
  static final regular7 = _baseRegular[TextSize.size7];
  static final regular8 = _baseRegular[TextSize.size8];

  // Semi-bold
  static final semiBold0 = _baseSemiBold[TextSize.size0];
  static final semiBold1 = _baseSemiBold[TextSize.size1];
  static final semiBold2 = _baseSemiBold[TextSize.size2];
  static final semiBold3 = _baseSemiBold[TextSize.size3];
  static final semiBold4 = _baseSemiBold[TextSize.size4];
  static final semiBold5 = _baseSemiBold[TextSize.size5];
  static final semiBold6 = _baseSemiBold[TextSize.size6];
  static final semiBold7 = _baseSemiBold[TextSize.size7];
  static final semiBold8 = _baseSemiBold[TextSize.size8];

  // Bold
  static final bold0 = _baseBold[TextSize.size0];
  static final bold1 = _baseBold[TextSize.size1];
  static final bold2 = _baseBold[TextSize.size2];
  static final bold3 = _baseBold[TextSize.size3];
  static final bold4 = _baseBold[TextSize.size4];
  static final bold5 = _baseBold[TextSize.size5];
  static final bold6 = _baseBold[TextSize.size6];
  static final bold7 = _baseBold[TextSize.size7];
  static final bold8 = _baseBold[TextSize.size8];

  // Bold Underlined
  static final boldUnderlined0 = _baseBoldUnder[TextSize.size0];
  static final boldUnderlined1 = _baseBoldUnder[TextSize.size1];
  static final boldUnderlined2 = _baseBoldUnder[TextSize.size2];
  static final boldUnderlined3 = _baseBoldUnder[TextSize.size3];
  static final boldUnderlined4 = _baseBoldUnder[TextSize.size4];
  static final boldUnderlined5 = _baseBoldUnder[TextSize.size5];
  static final boldUnderlined6 = _baseBoldUnder[TextSize.size6];
  static final boldUnderlined7 = _baseBoldUnder[TextSize.size7];
  static final boldUnderlined8 = _baseBoldUnder[TextSize.size8];

  // --------------------------------------------------------------------------

  static final _baseLight = <TextSize, TextStyle>{
    TextSize.size0: _createBaseTextStyle(TextWeight.light, TextSize.size0),
    TextSize.size1: _createBaseTextStyle(TextWeight.light, TextSize.size1),
    TextSize.size2: _createBaseTextStyle(TextWeight.light, TextSize.size2),
    TextSize.size3: _createBaseTextStyle(TextWeight.light, TextSize.size3),
    TextSize.size4: _createBaseTextStyle(TextWeight.light, TextSize.size4),
    TextSize.size5: _createBaseTextStyle(TextWeight.light, TextSize.size5),
    TextSize.size6: _createBaseTextStyle(TextWeight.light, TextSize.size6),
    TextSize.size7: _createBaseTextStyle(TextWeight.light, TextSize.size7),
    TextSize.size8: _createBaseTextStyle(TextWeight.light, TextSize.size8),
  };

  static final _baseRegular = <TextSize, TextStyle>{
    TextSize.size0: _createBaseTextStyle(TextWeight.regular, TextSize.size0),
    TextSize.size1: _createBaseTextStyle(TextWeight.regular, TextSize.size1),
    TextSize.size2: _createBaseTextStyle(TextWeight.regular, TextSize.size2),
    TextSize.size3: _createBaseTextStyle(TextWeight.regular, TextSize.size3),
    TextSize.size4: _createBaseTextStyle(TextWeight.regular, TextSize.size4),
    TextSize.size5: _createBaseTextStyle(TextWeight.regular, TextSize.size5),
    TextSize.size6: _createBaseTextStyle(TextWeight.regular, TextSize.size6),
    TextSize.size7: _createBaseTextStyle(TextWeight.regular, TextSize.size7),
    TextSize.size8: _createBaseTextStyle(TextWeight.regular, TextSize.size8),
  };

  static final _baseSemiBold = <TextSize, TextStyle>{
    TextSize.size0: _createBaseTextStyle(TextWeight.semiBold, TextSize.size0),
    TextSize.size1: _createBaseTextStyle(TextWeight.semiBold, TextSize.size1),
    TextSize.size2: _createBaseTextStyle(TextWeight.semiBold, TextSize.size2),
    TextSize.size3: _createBaseTextStyle(TextWeight.semiBold, TextSize.size3),
    TextSize.size4: _createBaseTextStyle(TextWeight.semiBold, TextSize.size4),
    TextSize.size5: _createBaseTextStyle(TextWeight.semiBold, TextSize.size5),
    TextSize.size6: _createBaseTextStyle(TextWeight.semiBold, TextSize.size6),
    TextSize.size7: _createBaseTextStyle(TextWeight.semiBold, TextSize.size7),
    TextSize.size8: _createBaseTextStyle(TextWeight.semiBold, TextSize.size8),
  };

  static final _baseBold = <TextSize, TextStyle>{
    TextSize.size0: _createBaseTextStyle(TextWeight.bold, TextSize.size0),
    TextSize.size1: _createBaseTextStyle(TextWeight.bold, TextSize.size1),
    TextSize.size2: _createBaseTextStyle(TextWeight.bold, TextSize.size2),
    TextSize.size3: _createBaseTextStyle(TextWeight.bold, TextSize.size3),
    TextSize.size4: _createBaseTextStyle(TextWeight.bold, TextSize.size4),
    TextSize.size5: _createBaseTextStyle(TextWeight.bold, TextSize.size5),
    TextSize.size6: _createBaseTextStyle(TextWeight.bold, TextSize.size6),
    TextSize.size7: _createBaseTextStyle(TextWeight.bold, TextSize.size7),
    TextSize.size8: _createBaseTextStyle(TextWeight.bold, TextSize.size8),
  };

  static final _baseBoldUnder = <TextSize, TextStyle>{
    TextSize.size0: _createBaseTextStyle(TextWeight.bold, TextSize.size0, underline: true),
    TextSize.size1: _createBaseTextStyle(TextWeight.bold, TextSize.size1, underline: true),
    TextSize.size2: _createBaseTextStyle(TextWeight.bold, TextSize.size2, underline: true),
    TextSize.size3: _createBaseTextStyle(TextWeight.bold, TextSize.size3, underline: true),
    TextSize.size4: _createBaseTextStyle(TextWeight.bold, TextSize.size4, underline: true),
    TextSize.size5: _createBaseTextStyle(TextWeight.bold, TextSize.size5, underline: true),
    TextSize.size6: _createBaseTextStyle(TextWeight.bold, TextSize.size6, underline: true),
    TextSize.size7: _createBaseTextStyle(TextWeight.bold, TextSize.size7, underline: true),
    TextSize.size8: _createBaseTextStyle(TextWeight.bold, TextSize.size8, underline: true),
  };

  static TextStyle _createBaseTextStyle(TextWeight weight, TextSize size,
      {Color? color, double? lineHeight, bool underline = false}) {
    final fontSize = _fontSizes[size]!;
    return GoogleFonts.poppins(
      color: color,
      fontWeight: _fontWeights[weight]!,
      fontSize: fontSize,
      decoration: underline ? TextDecoration.underline : null,
      height: (lineHeight ?? _lineHeights[size]!) / fontSize,
    );
    // TextStyle();
  }

  static const _fontWeights = <TextWeight, FontWeight>{
    TextWeight.light: FontWeight.w300,
    TextWeight.regular: FontWeight.w400,
    TextWeight.semiBold: FontWeight.w600,
    TextWeight.bold: FontWeight.w700,
  };

  static final _fontSizes = <TextSize, double>{
    TextSize.size0: 10.0,
    TextSize.size1: 12.0,
    TextSize.size2: 14.0,
    TextSize.size3: 15.0,
    TextSize.size4: 16.0,
    TextSize.size5: 18.0,
    TextSize.size6: 21.0,
    TextSize.size7: 24.0,
    TextSize.size8: 27.0,
  };

  static final _lineHeights = <TextSize, double>{
    TextSize.size0: 14.0,
    TextSize.size1: 16.0,
    TextSize.size2: 19.0,
    TextSize.size3: 20.0,
    TextSize.size4: 21.0,
    TextSize.size5: 24.0,
    TextSize.size6: 27.0,
    TextSize.size7: 30.0,
    TextSize.size8: 33.0,
  };
}

enum TextSize { size0, size1, size2, size3, size4, size5, size6, size7, size8 }

enum TextWeight { light, regular, semiBold, bold }

extension TextStyleWithColor on TextStyle? {
  TextStyle withColor(Color color) => this!.copyWith(color: color);
}
