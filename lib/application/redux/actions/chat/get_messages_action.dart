import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/chat/update_chat_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';

class GetMessagesAction extends ReduxAction<AppState> {
  final String query;
  final String sessionId;

  GetMessagesAction({
    required this.query,
    required this.sessionId,
  });

  @override
  void before() {
    dispatch(WaitAction<AppState>.add(getMessageFlag));
  }

  @override
  void after() {
    dispatch(WaitAction<AppState>.remove(getMessageFlag));
  }

  @override
  Future<AppState?> reduce() async {
    // add disease and food preference to the query
    String modifiedQuery = query;

    String? disease = state.userProfileState?.userProfile?.illnesses?.first;
    String? foodPreference =
        state.userProfileState?.userProfile?.foodPreferences?.first;

    // if first chat message append disease and food preferences
    if (state.chatState?.messages?.length == 2) {
      if (disease != null && foodPreference != null) {
        modifiedQuery += ' I am $foodPreference. I have $disease';
      }
    }

    final Map<String, dynamic> variables = <String, dynamic>{
      'message': modifiedQuery,
      'session_id': sessionId,
    };

    final Response response = await post(
      Uri.parse(recommendUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(variables),
    );

    if (response.statusCode == 200) {
      // Get the existing messages and determine the next ID
      final List<Message?> existingMessages =
          state.chatState?.messages ?? <Message>[];
      final String nextId =
          (int.parse(existingMessages.last?.id ?? '') + 1).toString();

      Message message = Message(
        id: nextId,
        sender: 'chat_bot',
        content: jsonDecode(response.body),
      );

      // Get the existing messages and append the new one
      final List<Message?> updatedMessages =
          List<Message?>.from(state.chatState?.messages ?? <Message>[]);
      updatedMessages.add(message);

      dispatch(
        UpdateChatStateAction(
          messages: updatedMessages,
        ),
      );
    }

    return null;
  }
}
