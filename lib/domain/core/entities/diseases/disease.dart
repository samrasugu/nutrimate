import 'package:freezed_annotation/freezed_annotation.dart';

part 'disease.freezed.dart';
part 'disease.g.dart';

@freezed
class Disease with _$Disease {
  factory Disease({
    @JsonKey(name: 'disease_id') String? id,
    @JsonKey(name: 'disease_name') String? name,
    @JsonKey(name: 'description') String? description,
  }) = _Disease;

  factory Disease.fromJson(Map<String, dynamic> json) => _$DiseaseFromJson(json);

  factory Disease.initial() => Disease(
        id: '',
        name: '',
        description: '',
      );
}