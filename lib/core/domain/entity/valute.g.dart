// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Valute _$ValuteFromJson(Map<String, dynamic> json) => Valute(
      json['ID'] as String,
      json['NumCode'] as String,
      json['CharCode'] as String,
      json['Nominal'] as int,
      json['Name'] as String,
      (json['Value'] as num).toDouble(),
      (json['Previous'] as num).toDouble(),
    );

Map<String, dynamic> _$ValuteToJson(Valute instance) => <String, dynamic>{
      'ID': instance.ID,
      'NumCode': instance.NumCode,
      'CharCode': instance.CharCode,
      'Nominal': instance.Nominal,
      'Name': instance.Name,
      'Value': instance.Value,
      'Previous': instance.Previous,
    };
