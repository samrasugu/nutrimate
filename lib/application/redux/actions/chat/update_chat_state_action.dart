import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/states/chat_state.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';

class UpdateChatStateAction extends ReduxAction<AppState> {
  final List<Message?>? messages;

  UpdateChatStateAction({
    this.messages,
  });

  @override
  AppState reduce() {
    final ChatState newChatState = ChatState(
      messages: messages ?? state.chatState?.messages,
      sessionId: state.chatState?.sessionId,
    );

    final AppState newState = state.copyWith(
      chatState: newChatState,
    );

    return newState;
  }
}
