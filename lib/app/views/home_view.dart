import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  State<HomeView> createState() => _HomeViewState();
}

class  _HomeViewState extends State<HomeView> {
  String selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
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
              SizedBox(
                
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          value: selectedCurrency,
                          onChanged:(value) {
                            setState(() {
                              selectedCurrency = value!;
                            });
                          },
                          items: [
                            DropdownMenuItem(value: 'USD',child: Text('Dolar')),
                            DropdownMenuItem(value: 'BTC',child: Text('Bitcoin')),
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
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
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
