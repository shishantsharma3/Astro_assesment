import 'package:astro_app_assesment/Service/astrologer_service.dart';
import 'package:astro_app_assesment/Service/auth_service.dart';
import 'package:astro_app_assesment/widgets/astrologer_card.dart';
import 'package:astro_app_assesment/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final AuthService _authService = AuthService();
  final astrologers = AstrologerService().getAstrologers();
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Finance',
    'Education',
    'Marriage',
    'Job',
    'Health',
  ];

  @override
  Widget build(BuildContext context) {
    // Filter astrologers by selected category
    final filteredAstrologers = selectedCategory == 'All'
        ? astrologers
        : astrologers
            .where((astro) => astro.category == selectedCategory)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomButton(
              text: 'Sign Out',
              onPressed: () async {
                await _authService.logout();
                Navigator.pushNamed(context, '/login');
              },
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Horizontal Scroll Bar for Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16.0),
                    child: ChoiceChip(
                      label: Text(category),
                      selected: selectedCategory == category,
                      onSelected: (isSelected) {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      selectedColor: Colors.deepPurple,
                      backgroundColor: Colors.grey.shade300,
                      labelStyle: TextStyle(
                        color: selectedCategory == category
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // Display filtered astrologers
            Expanded(
              child: ListView.builder(
                itemCount: filteredAstrologers.length,
                itemBuilder: (context, index) {
                  return AstrologerCard(astrologer: filteredAstrologers[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
