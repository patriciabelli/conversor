import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController({
    required this.toText, 
    required this.fromText
    }) {
    currencies = CurrencyModel.getCurrency();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {

    double value = double.tryParse(fromText.text) ?? 0;
    double result = value * toCurrency.real / fromCurrency.real;
    toText.text = result.toStringAsFixed(2);
  }
}
