import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    // Este es solo un ejemplo con productos estáticos.
    return [
      Product(
        name: 'Diamond Necklace',
        price: 999.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Gold Ring',
        price: 749.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Silver Bracelet',
        price: 299.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Pearl Earrings',
        price: 499.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Diamond Necklace',
        price: 999.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Gold Ring',
        price: 749.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Silver Bracelet',
        price: 299.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Pearl Earrings',
        price: 499.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Diamond Necklace',
        price: 999.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Gold Ring',
        price: 749.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Silver Bracelet',
        price: 299.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      Product(
        name: 'Pearl Earrings',
        price: 499.99,
        assetName:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        assetPackage: 'my_package',
      ),
      // Añade más productos aquí si lo deseas
    ];
  }
}

enum Category { all, accessories, clothing, home }
