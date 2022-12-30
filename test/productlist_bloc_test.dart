import 'package:bloc_login/business_logic/login_bloc/login_bloc.dart';
import 'package:bloc_login/business_logic/product_list_bloc/productlist_bloc.dart';
import 'package:bloc_login/data/model/product_list.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';


ProductList productListSuccess =
    ProductList(status: "1", msg: "gaya", productList: []);



Future<ProductList> mockSuccessProductListHandler(String categoryId) async {
  return productListSuccess;
}


Future<ProductList?> mockFailProductListHandler(String categoryId) async {
  return null;
}



main() {


  blocTest<ProductlistBloc, ProductlistState>("List Test Success",
      build: () => ProductlistBloc(
          testproductListHandler: mockSuccessProductListHandler),
      act: (bloc) => bloc.add(GetProductList(subCategoryID: '1')),
      verify: (productListState) => expect(productListState.state,
          ProductlistLoaded(productList: productListSuccess)));


  blocTest<ProductlistBloc,ProductlistState>("List Test Fail",
  build: ()=> ProductlistBloc(
    testproductListHandler: mockFailProductListHandler),
    act: (bloc)=> bloc.add(GetProductList(subCategoryID: '')),
    verify: (productListState)=> expect(productListState.state, ProductlistFailed()));



}
