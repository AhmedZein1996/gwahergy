import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String title;
  final String imgUrl;
  final String price;
  final String weight;
  final String description;

  const ProductEntity({
    required this.title,
    required this.imgUrl,
    required this.price,
    required this.weight,
    required this.description,
  });

  @override
  List<Object?> get props => [title, imgUrl, price, weight, description];
}
