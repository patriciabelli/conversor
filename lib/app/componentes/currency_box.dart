import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final String selectedCurrency;
  final ValueChanged<String?> onChanged;

  const CurrencyBox({
    super.key,
    required this.selectedCurrency,
    required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.amber,
                        isExpanded: true,
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        value: selectedCurrency,
                        onChanged:onChanged,
                        items: [
                          DropdownMenuItem(
                            value: 'USD',child: Text('Dolar')),
                          DropdownMenuItem(
                            value: 'BTC',child: Text('Bitcoin')),
                      ], 
                                          ),
                 ),
                      ),
                 const SizedBox(width: 10),
                  const Expanded(
                    flex: 2,
                    child: TextField(decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)
                        )
                    )
                    )
                    ),
                ],
              );
  }
}