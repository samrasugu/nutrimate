import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'sender') String? sender,
    @JsonKey(name: 'content') String? content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  factory Message.initial() => Message(
        id: '',
        sender: '',
        content: '',
      );
}
