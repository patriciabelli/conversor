class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({required this.name, required this.real, required this.dolar, required this.euro, required this.bitcoin});
    static List<CurrencyModel> getCurrency() {
    return [
      CurrencyModel(
        name: 'Real',
        real: 1.0,
        dolar: 0.19,
        euro: 0.17,
        bitcoin: 0.0000031,
      ),
      CurrencyModel(
        name: 'Dólar',
        real: 5.20,
        dolar: 1.0,
        euro: 0.89,
        bitcoin: 0.0000162,
      ),
      CurrencyModel(
        name: 'Euro',
        real: 5.80,
        dolar: 1.12,
        euro: 1.0,
        bitcoin: 0.0000183,
      ),
      CurrencyModel(
        name: 'Bitcoin',
        real: 165000.00,
        dolar: 62000.00,
        euro: 55000.00,
        bitcoin: 1.0,
      ),
    ];
  }
}