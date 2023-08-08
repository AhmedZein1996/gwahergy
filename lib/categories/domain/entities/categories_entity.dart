import 'package:equatable/equatable.dart';
import 'package:gwahergy/home/domain/entities/product/product_entity.dart';

import '../../../core/managers/asset_manager.dart';

class CategoriesEntity extends Equatable {
  final List<ProductEntity> bracelets;
  final List<ProductEntity> bars;
  final List<ProductEntity> rings;
  final List<ProductEntity> earrings;
  final List<ProductEntity> necklaces;

  const CategoriesEntity({
    required this.bracelets,
    required this.bars,
    required this.rings,
    required this.earrings,
    required this.necklaces,
  });

  @override
  List<Object?> get props => [bracelets, bars, rings, earrings, necklaces];
}

CategoriesEntity categories = const CategoriesEntity(
  bracelets: [
    ProductEntity(
      id: 1,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '15',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '15',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '15',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '15',
      description: '',
    ),
  ],
  bars: [
    ProductEntity(
      id: 1,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '50',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '50',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '50',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '50',
      description: '',
    ),
  ],
  rings: [
    ProductEntity(
      id: 1,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '5',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '5',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '5',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '5',
      description: '',
    ),
  ],
  earrings: [
    ProductEntity(
      id: 1,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '5',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '5',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '5',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '5',
      description: '',
    ),
  ],
  necklaces: [
    ProductEntity(
      id: 1,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '20',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '20',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '15',
      description: '',
    ),
    ProductEntity(
      id: 1,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '20',
      description: '',
    ),
  ],
);
