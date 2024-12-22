import 'package:chat_application/domains/entities/message.dart';
import 'package:chat_application/infrastructure/models/response_yes_no.dart';
import 'package:dio/dio.dart';

class GetYesNotAnswers {
    final _dio = Dio();
  
  Future<Message> getAnswers() async{

    final response = await _dio.get('https://yesno.wtf/api');
    final yesNotModel = ResponseYesNo.fromJson( response.data);

   return yesNotModel.toMessageEntity();
  }
}