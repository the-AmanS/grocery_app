import '../models/product.dart';

class Category {
  final String id;
  final String name;
  final String imageUrl;

  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

final List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Fresh Apples',
    imageUrl: 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6',
    price: 4.99,
    discount: 0.1,
    rating: 4.5,
    deliveryTime: '30 min',
  ),
  Product(
    id: '2',
    name: 'Organic Bananas',
    imageUrl: 'https://images.unsplash.com/photo-1603833665858-e61d17a86224',
    price: 2.99,
    discount: 0.05,
    rating: 4.2,
    deliveryTime: '25 min',
  ),
  Product(
    id: '3',
    name: 'Fresh Strawberries',
    imageUrl: 'https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2',
    price: 5.99,
    discount: 0.15,
    rating: 4.8,
    deliveryTime: '35 min',
  ),
  Product(
    id: '4',
    name: 'Avocado',
    imageUrl: 'https://images.unsplash.com/photo-1523049673857-eb18f1d7b578',
    price: 3.49,
    discount: 0.0,
    rating: 4.3,
    deliveryTime: '20 min',
  ),
  Product(
    id: '5',
    name: 'Whole Milk',
    imageUrl: 'https://images.unsplash.com/photo-1563636619-e9143da7973b',
    price: 2.49,
    discount: 0.0,
    rating: 4.0,
    deliveryTime: '15 min',
  ),
];

final List<Category> dummyCategories = [
  Category(
    id: '1',
    name: 'Fruits',
    imageUrl: 'https://images.unsplash.com/photo-1610832958506-aa56368176cf',
  ),
  Category(
    id: '2',
    name: 'Vegetables',
    imageUrl: 'https://images.unsplash.com/photo-1557844352-761f2565b576',
  ),
  Category(
    id: '3',
    name: 'Dairy',
    imageUrl: 'https://images.unsplash.com/photo-1628088062854-d1870b4553da',
  ),
  Category(
    id: '4',
    name: 'Bakery',
    imageUrl: 'https://images.unsplash.com/photo-1608198093002-ad4e005484ec',
  ),
  Category(
    id: '5',
    name: 'Beverages',
    imageUrl: 'https://images.unsplash.com/photo-1595981267035-7b04ca84a82d',
  ),
];