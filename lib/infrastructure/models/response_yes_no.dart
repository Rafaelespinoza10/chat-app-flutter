// To parse this JSON data, do
//
//     final responseYesNo = responseYesNoFromJson(jsonString);

import 'dart:convert';

import 'package:chat_application/domains/entities/message.dart';

ResponseYesNo responseYesNoFromJson(String str) => ResponseYesNo.fromJson(json.decode(str));

String responseYesNoToJson(ResponseYesNo data) => json.encode(data.toJson());

class ResponseYesNo {
    final String answer;
    final bool forced;
    final String image;

    ResponseYesNo({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory ResponseYesNo.fromJson(Map<String, dynamic> json) => ResponseYesNo(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

  Message toMessageEntity() => Message(
    text: answer == 'yes' ? 'Si': 'No', 
    fromWho: FromWho.rafa,
    imageUrl: image
    );
}
