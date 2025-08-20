import 'package:conversor/app/controllers/home_controller.dart';
import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(
    toText: toText, 
    fromText: fromText
    );

  test('deve converter de real para dolar com virgula', () {
    toText.text = '2.00';
    homeController.convert(); 
    expect(fromText.text, '0,36');
  });

  test('deve converter de real para dolar com ponto', () {
    toText.text = '2.00';
    homeController.convert(); 
    expect(fromText.text, '0.36');
  });

  test('deve converter de dolar para real', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dólar',
        real: 5.20,
        dolar: 1.0,
        euro: 0.89,
        bitcoin: 0.0000162,
      );
      homeController.fromCurrency = CurrencyModel(
        name: 'Real',
        real: 1.0,
        dolar: 0.18,
        euro: 0.17,
        bitcoin: 0.0000031,
      ); 
    expect(fromText.text, '5.20');
  });
}