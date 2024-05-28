import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class GenerateChatSessionIdAction extends ReduxAction<AppState> {
  GenerateChatSessionIdAction();

  @override
  Future<AppState?> reduce() async {
    return state.copyWith(
      chatState: state.chatState?.copyWith(
        sessionId: DateTime.now().millisecondsSinceEpoch.toString(),
      ),
    );
  }
}
