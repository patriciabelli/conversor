import 'package:conversor/app/componentes/currency_box.dart';
import 'package:conversor/app/controllers/home_controller.dart';
import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  
  final TextEditingController fromText;
  final TextEditingController toText;

 final HomeController homeController;

 const HomeView({
    super.key,
    required this.homeController,
    required this.fromText,
    required this.toText,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
} 

class  _HomeViewState extends State<HomeView> {
  late CurrencyModel selectedCurrency;

  late List<CurrencyModel> currencies = [
    CurrencyModel(name: 'Real', real: 1.0, dolar: 0.19, euro: 0.18, bitcoin: 0.000003),
    CurrencyModel(name: 'Dólar', real: 5.2, dolar: 1.0, euro: 0.95, bitcoin: 0.000016),
    CurrencyModel(name: 'Euro', real: 5.6, dolar: 1.05, euro: 1.0, bitcoin: 0.000017),
    CurrencyModel(name: 'Bitcoin', real: 300000.0, dolar: 64000.0, euro: 61000.0, bitcoin: 1.0),
  ];
  
  
@override
void initState() {
  super.initState();
  currencies = CurrencyModel.getCurrency();
  selectedCurrency = currencies[0];
}

@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 150,
                  ),
              ),
              SizedBox(height: 50),
             CurrencyBox(
              controller: widget.toText,
              items: widget.homeController.currencies,
              selectedCurrency: widget.homeController.toCurrency,
              onChanged: (model) {
                setState(() {
                  widget.homeController.toCurrency = model!;
                
                });
              },          

             ),
             SizedBox(height: 10),
             CurrencyBox(
              controller:  widget.fromText,
               items: widget.homeController.currencies,
              selectedCurrency: widget.homeController.fromCurrency,
              onChanged: (model) {
                setState(() {
                  widget.homeController.fromCurrency = model!;
                });
              },
             ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  widget.homeController.convert();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black, 
                ),
                child: const Text("CONVERTER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
