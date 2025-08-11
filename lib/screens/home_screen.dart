import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/product_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/category_item.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Grocery App'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width > 600 ? 24.0 : 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width > 600 ? 12.0 : 16.0
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width > 600 ? 8.0 : 12.0
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      size: MediaQuery.of(context).size.width > 600 ? 20 : 24,
                    ),
                    hintText: 'Search for groceries',
                    hintStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width > 600 ? 14 : 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width > 600 ? 14.0 : 20.0),
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 20, 
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width > 600 ? 6.0 : 10.0),
              SizedBox(
                height: MediaQuery.of(context).size.width > 600 ? 90 : 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyCategories.length,
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      category: dummyCategories[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Popular Items',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 20, 
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width > 600 ? 6.0 : 10.0),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isDesktop = MediaQuery.of(context).size.width > 600;
                  final crossAxisCount = isDesktop ? 
                      (MediaQuery.of(context).size.width > 1200 ? 4 : 3) : 2;
                  
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: isDesktop ? 0.85 : 0.65,
                      crossAxisSpacing: isDesktop ? 12.0 : 16.0,
                      mainAxisSpacing: isDesktop ? 12.0 : 16.0,
                    ),
                    itemCount: dummyProducts.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: dummyProducts[index],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}