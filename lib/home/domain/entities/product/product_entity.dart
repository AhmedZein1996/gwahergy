import 'package:equatable/equatable.dart';

import '../../../../core/managers/asset_manager.dart';

class ProductEntity extends Equatable {
  final int id;
  final String title;
  final String imgUrl;
  final String price;
  final String weight;
  final String description;

  const ProductEntity({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.price,
    required this.weight,
    required this.description,
  });

  @override
  List<Object?> get props => [id, title, imgUrl, price, weight, description];
}

const products = [
  ProductEntity(
    id: 5,
    title: 'غويشة',
    imgUrl: ImageManager.bracelet,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 6,
    title: 'خاتم',
    imgUrl: ImageManager.ring,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 7,
    title: 'حلق',
    imgUrl: ImageManager.earring,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 8,
    title: 'سبيكة',
    imgUrl: ImageManager.bar,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 8,
    title: 'سبيكة',
    imgUrl: ImageManager.bar,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 8,
    title: 'سبيكة',
    imgUrl: ImageManager.bar,
    price: '34725',
    weight: '15',
    description: '',
  ),
];

const products1 = [
  ProductEntity(
    id: 1,
    title: 'خاتم',
    imgUrl: ImageManager.ring,
    price: '5000',
    weight: '5',
    description: '',
  ),
  ProductEntity(
    id: 2,
    title: 'خاتم',
    imgUrl: ImageManager.ring,
    price: '5000',
    weight: '5',
    description: '',
  ),
  ProductEntity(
    id: 3,
    title: 'خاتم',
    imgUrl: ImageManager.ring,
    price: '5000',
    weight: '5',
    description: '',
  ),
  ProductEntity(
    id: 4,
    title: 'خاتم',
    imgUrl: ImageManager.ring,
    price: '5000',
    weight: '5',
    description: '',
  ),
];
const products2 = [
  ProductEntity(
    id: 5,
    title: 'غويشة',
    imgUrl: ImageManager.bracelet,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 6,
    title: 'غويشة',
    imgUrl: ImageManager.bracelet,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 7,
    title: 'غويشة',
    imgUrl: ImageManager.bracelet,
    price: '34725',
    weight: '15',
    description: '',
  ),
  ProductEntity(
    id: 8,
    title: 'غويشة',
    imgUrl: ImageManager.bracelet,
    price: '34725',
    weight: '15',
    description: '',
  ),
];
