import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';

part 'disease_search_response.freezed.dart';
part 'disease_search_response.g.dart';

@freezed
class DiseaseSearchResponse with _$DiseaseSearchResponse {
  factory DiseaseSearchResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'disease') Disease? disease,
  }) = _DiseaseSearchResponse;

  factory DiseaseSearchResponse.fromJson(Map<String, dynamic> json) => _$DiseaseSearchResponseFromJson(json);

  factory DiseaseSearchResponse.initial() => DiseaseSearchResponse(
        message: '',
        disease: Disease.initial(),
      );
}