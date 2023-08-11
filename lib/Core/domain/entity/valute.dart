import 'package:json_annotation/json_annotation.dart';
part 'valute.g.dart';

@JsonSerializable(explicitToJson: true)
class Valute {
  String ID;
  String NumCode;
  String CharCode;
  int Nominal;
  String Name;
  double Value;
  double Previous;
  Valute(this.ID, this.NumCode, this.CharCode, this.Nominal, this.Name,
      this.Value, this.Previous);
  factory Valute.fromJson(Map<String, dynamic> json) => _$ValuteFromJson(json);
  Map<String, dynamic> toJson() => _$ValuteToJson(this);
}
