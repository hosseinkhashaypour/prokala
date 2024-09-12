import 'package:dio/dio.dart';
import 'package:prokalaproject/const/connection.dart';

class CommentApiServices{
  final Dio _dio = Dio();
  // show comment api
  // api code : http://programmingshow.ir/api/api/comment/product/8
  Future<Response>callShowComment(String productId)async{
    final Response response = await _dio.get('$apiUrl/comment/product/$productId');
    return response;
  }
}