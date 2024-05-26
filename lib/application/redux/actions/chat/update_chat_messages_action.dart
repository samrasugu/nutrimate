import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/states/chat_state.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';

class UpdateChatMessagesAction extends ReduxAction<AppState> {
  final List<Message?>? messages;

  UpdateChatMessagesAction({
    this.messages,
  });

  @override
  AppState reduce() {
    final ChatState newChatMessagesState = ChatState(
      messages: messages ?? state.chatState?.messages,
    );

    final AppState newState = state.copyWith(
      chatState: newChatMessagesState,
    );

    return newState;
  }
}
