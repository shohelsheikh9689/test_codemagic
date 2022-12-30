import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:bloc_login/data/dataproviders/network/api_call.dart';
import 'package:bloc_login/data/model/product_list.dart';

part 'productlist_event.dart';
part 'productlist_state.dart';

typedef ProductListHandler = Future<ProductList?> Function(String subCategoryID);


class ProductlistBloc extends Bloc<ProductlistEvent, ProductlistState> {
  ProductListHandler? testproductListHandler;

  // ProductlistBloc() : super(ProductlistInitial());

  ProductlistBloc({this.testproductListHandler}) : super(ProductlistInitial());

  Future<ProductList?> _getProductListHandler(String subCategoryID) async {
    ProductList? otp = await Api.getProductList(subCategoryID);

    return otp;
  }



  @override
  Stream<ProductlistState> mapEventToState(
    ProductlistEvent event,
  ) async* {
    if (event is GetProductList) {
      yield ProductlistLoading();
      // ProductList? productList = await Api.getProductList(event.subCategoryID);
      ProductList? productList = await (testproductListHandler ?? _getProductListHandler)(event.subCategoryID);

      if (productList == null) {
        yield ProductlistFailed();
      } else if (productList.status == "1") {
        yield ProductlistLoaded(productList: productList);
      }
    }
  }

}
