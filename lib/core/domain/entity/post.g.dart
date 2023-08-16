// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      json['Date'] as String,
      json['PreviousDate'] as String,
      json['PreviousURL'] as String,
      json['Timestamp'] as String,
      (json['Valute'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Valute.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'Date': instance.Date,
      'PreviousDate': instance.PreviousDate,
      'PreviousURL': instance.PreviousURL,
      'Timestamp': instance.Timestamp,
      'Valute': instance.valute.map((k, e) => MapEntry(k, e.toJson())),
    };
