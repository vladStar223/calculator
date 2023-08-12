import 'package:calculator/Core/domain/entity/valute.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable(explicitToJson: true)
class Post {
  String Date;
  String PreviousDate;
  String PreviousURL;
  String Timestamp;
  @JsonKey(name: 'Valute')
  Map<String, dynamic> valute;
  Post(this.Date, this.PreviousDate, this.PreviousURL, this.Timestamp,
      this.valute);
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
