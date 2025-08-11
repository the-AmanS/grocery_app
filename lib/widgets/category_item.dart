import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 600;
    
    return Container(
      margin: EdgeInsets.only(right: isDesktop ? 12 : 16),
      width: isDesktop ? 80 : 100,
      child: Column(
        children: [
          Container(
            height: isDesktop ? 60 : 70,
            width: isDesktop ? 60 : 70,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: Icon(Icons.image_not_supported, 
                        size: isDesktop ? 24 : 30),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: isDesktop ? 4 : 6),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: isDesktop ? 12 : 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}