part of 'productlist_bloc.dart';

@immutable
abstract class ProductlistState {}

class ProductlistInitial extends ProductlistState {}

class ProductlistLoading extends ProductlistState {}

class ProductlistLoaded extends ProductlistState {
  final ProductList? productList;
  ProductlistLoaded({this.productList});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductlistLoaded &&
          runtimeType == other.runtimeType &&
          productList == other.productList;

  @override
  int get hashCode => productList.hashCode;
}

class ProductlistFailed extends ProductlistState {


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductlistFailed && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}
