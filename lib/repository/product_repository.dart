import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:my_gemini/model/product.dart';
import 'package:my_gemini/provider/connection.dart';

class ProductRepository{
  final _connection = Get.find<MyGeminiConnection>();

  Future<Either<String, List<Product>>> getProductList() async{
    try{
      const path='/products';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final productList = (json["products"] as Iterable).map((e) => Product.fromJson(e)).toList();
      return right(productList);
    }catch(_){
      print(_);
      return left('정상적으로 상품 목록 정보를 불러오지 못했어요.');
    }
  }

  Future<Either<String, Product>> getProduct({required int id}) async{
    try{
      final path='/products/$id';
      final res = await _connection.get(path);
      print(res.body);
      final json = _connection.getJsonMapOrCrash(res.body);
      final product = Product.fromJson(json);
      return right(product);
    }catch(_){
      print(_);
      return left('정상적으로 상품 정보를 불러오지 못했어요.');
    }
  }

  Future<Either<String, Product>> createProduct({required String name, required double price, List<String>? images}) async{
    try{
      const path='/products/add';
      final data = {
        "title": name,
        "price": price,
        "images": images??[]
      };
      final res = await _connection.post(path, data: jsonEncode(data));
      print(res.body);
      print(res.statusCode);
      // if(res.statusCode != 200) throw("상품 생성에 실패했어요.");
      final json = _connection.getJsonMapOrCrash(res.body);
      final newProduct = Product.fromJson(json);
      return right(newProduct);
    }catch(_){
      print(_);
      return left('정상적으로 상품을 생성하지 못했어요.');
    }
  }
}
