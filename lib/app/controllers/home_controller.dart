import 'package:conversor/app/models/currency_model.dart';

class HomeController {

 late List<CurrencyModel> currencies;
 late CurrencyModel toCurrency;
 late  CurrencyModel fromCurrency;

 HomeController() {
  currencies = CurrencyModel.getCurrency();
  toCurrency = currencies[0];
  fromCurrency = currencies[1];
 }
}