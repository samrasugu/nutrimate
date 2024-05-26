// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatStateImpl _$$ChatStateImplFromJson(Map<String, dynamic> json) =>
    _$ChatStateImpl(
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatStateImplToJson(_$ChatStateImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };
