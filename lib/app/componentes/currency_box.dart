import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel selectedCurrency;
  final ValueChanged<CurrencyModel?> onChanged;

  const CurrencyBox({
    super.key,
    required this.items,
    required this.controller,
    required this.selectedCurrency,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              value: selectedCurrency,
              underline: Container(
                height: 1, 
                color: Colors.amber
                ),
              items: items
              .map((CurrencyModel model) {
                    return DropdownMenuItem<CurrencyModel>(
                      value: model,
                      child: Text(model.name),
                    );
                  }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
