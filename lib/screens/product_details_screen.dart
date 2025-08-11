import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/rating_stars.dart';
import '../widgets/custom_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productId;
  
  const ProductDetailsScreen({Key? key, required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Find the product by ID
    final product = dummyProducts.firstWhere(
      (product) => product.id == productId,
      orElse: () => dummyProducts.first,
    );
    
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Center(
                      child: Icon(Icons.image_not_supported, size: 50),
                    ),
                  );
                },
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // Rating and Delivery Time
                  Row(
                    children: [
                      RatingStars(rating: product.rating),
                      const SizedBox(width: 8),
                      Text(
                        '${product.rating}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(Icons.access_time, size: 16),
                      const SizedBox(width: 4),
                      Text('Delivery: ${product.deliveryTime}'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // Price and Discount
                  Row(
                    children: [
                      Text(
                        '\$${(product.price * (1 - product.discount)).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 8),
                      if (product.discount > 0)
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      if (product.discount > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '${(product.discount * 100).toInt()}% OFF',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  
                  // Description
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in metus euismod, efficitur lectus vel, faucibus nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed at tortor vel risus tincidunt ultricies.',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 32),
                  
                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}