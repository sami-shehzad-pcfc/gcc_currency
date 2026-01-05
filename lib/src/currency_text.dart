import 'package:flutter/widgets.dart';
import 'currency_icon.dart';
import 'currency_enum.dart';

class GCCCurrencyText {
  static IconData icon(GCCCurrency currency) {
    switch (currency) {
      case GCCCurrency.sar:
        return GCCCurrencyIcon.sar;
      case GCCCurrency.aed:
        return GCCCurrencyIcon.aed;
      case GCCCurrency.qar:
        return GCCCurrencyIcon.qar;
      case GCCCurrency.omr:
        return GCCCurrencyIcon.omr;
      case GCCCurrency.kwd:
        return GCCCurrencyIcon.kwd;
      case GCCCurrency.bhd:
        return GCCCurrencyIcon.bhd;
    }
  }

  static TextSpan span(GCCCurrency currency, {double size = 16, Color? color}) {
    return TextSpan(
      text: String.fromCharCode(icon(currency).codePoint),
      style: TextStyle(
        fontFamily: 'GCCCurrency',
        package: 'gcc_currency',
        fontSize: size,
        color: color,
      ),
    );
  }
}
