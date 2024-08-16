import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String selectedCity = 'Dodoma'; // Default city
  List<String> cities = [
    'Arusha',
    'Dodoma',
    'Mwanza',
    'Mbeya',
    'Morogoro',
    'Tanga',
    'Kahama',
    'Tabora',
    'Zanzibar City',
    'Kigoma',
    'Sumbawanga',
    'Moshi',
    'Tanga',
    'Shinyanga',
    'Bagamoyo',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: Column(children: [
              Text(
                'Smart Dalali',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Panga na pangisha chumba ' 'kwa urahisi',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Chagua mkoa',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              DropdownButton(
                  iconSize: 25,
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  // iconEnabledColor: Colors.white,
                  //  iconDisabledColor: Colors.white,
                  // dropdownColor: Colors.white,
                  //focusColor: Colors.white,
                  value: selectedCity,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: cities.map((String cities) {
                    return DropdownMenuItem(
                      value: cities,
                      child: Text(cities),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCity = newValue!;
                    });
                  }),
                 Text(
                'Chagua mkoa',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),  
            ]),
          );
        },
      ),
    );
  }
}
