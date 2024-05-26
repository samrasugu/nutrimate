import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';

class ChatPageViewModel extends Vm {
  final List<Message?>? messages;
  final Wait wait;

  ChatPageViewModel({this.messages, required this.wait})
      : super(equals: <Object?>[messages, wait]);

  static ChatPageViewModel fromStore(Store<AppState> store) {
    return ChatPageViewModel(
      wait: store.state.wait ?? Wait(),
      messages: store.state.chatState?.messages,
    );
  }
}
