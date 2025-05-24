import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/application/redux/actions/chat/generate_chat_sessionid_action.dart';
import 'package:nutrimate/application/redux/actions/chat/get_messages_action.dart';
import 'package:nutrimate/application/redux/actions/chat/update_chat_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/chat_page_view_model.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/domain/core/value_objects/dummy_data.dart';
import 'package:nutrimate/domain/core/value_objects/enums.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  late List<Message> messages = <Message>[];

  TextEditingController messageEditingController = TextEditingController();

  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          leadingWidget: SvgPicture.asset(
            xIconSvgPath,
            height: 25,
            width: 25,
          ),
          title: nutriBotText,
          titleTextStyle: normalSize18Text(
            AppColors.blackColor,
          ),
          trailingWidget: PopupMenuButton<SampleItem>(
            initialValue: selectedItem,
            color: AppColors.whiteColor,
            surfaceTintColor: AppColors.whiteColor,
            onSelected: (SampleItem item) {
              setState(() {
                selectedItem = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: GestureDetector(
                  onTap: () {
                    // clear chat messages
                    context.dispatch(
                      UpdateChatStateAction(
                        messages: <Message>[
                          Message(
                            id: '0',
                            sender: 'chat_bot',
                            content: chatEntryMessage.first['content'],
                          ),
                        ],
                      ),
                    );
                    // generate new session id
                    context.dispatch(
                      GenerateChatSessionIdAction(),
                    );
                  },
                  child: const Text(clearChatText),
                ),
              ),
              PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.settings);
                  },
                  child: const Text(settingsText),
                ),
              ),
            ],
          ),
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: StoreConnector<AppState, ChatPageViewModel>(
          converter: (Store<AppState> store) =>
              ChatPageViewModel.fromStore(store),
          onInit: (Store<AppState> store) async {
            // check if chat messages are empty. If empty, add the first message
            if (store.state.chatState?.messages?.isEmpty ?? true) {
              Message message = Message(
                id: '1',
                sender: 'chat_bot',
                content: chatEntryMessage.first['content'],
              );

              context.dispatch(
                UpdateChatStateAction(
                  messages: <Message>[message],
                ),
              );
            }

            if (store.state.chatState?.sessionId == null ||
                store.state.chatState?.sessionId == '') {
              await store.dispatch(
                GenerateChatSessionIdAction(),
              );
            }
          },
          builder: (BuildContext context, ChatPageViewModel vm) {
            final List<Message?>? messages = vm.messages;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: messages!.map((Message? message) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 5,
                          ),
                          child: Align(
                            alignment: message!.sender == 'user'
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                color: message.sender == 'user'
                                    ? AppColors.primaryColor
                                    : AppColors.lightGreyColor
                                        .withValues(alpha: (0.5 * 255)),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                message.content ?? '',
                                style: normalSize16Text(
                                  message.sender == 'user'
                                      ? AppColors.whiteColor
                                      : AppColors.blackColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  margin: const EdgeInsets.all(8.0),
                  color: AppColors.whiteColor,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CustomTextField(
                          controller: messageEditingController,
                          hintText: typeAMessageText,
                          borderColor: AppColors.primaryColor,
                          focusedBorderColor: AppColors.primaryColor,
                          customFillColor: AppColors.whiteColor,
                          enabled:
                              vm.wait!.isWaiting(getMessageFlag) ? false : true,
                        ),
                      ),
                      smallHorizontalSizedBox,
                      GestureDetector(
                        onTap: () {
                          if (messageEditingController.text.isNotEmpty) {
                            final List<Message?> modifiableList =
                                List<Message?>.from(messages);

                            // Get the existing messages and determine the next ID
                            final List<Message?> existingMessages =
                                List<Message?>.from(vm.messages ?? <Message>[]);
                            final String nextId = existingMessages.isNotEmpty
                                ? (int.parse(existingMessages.last?.id ?? '0') +
                                        1)
                                    .toString()
                                : '1';

                            Message message = Message(
                              id: nextId,
                              sender: 'user',
                              content: messageEditingController.text,
                            );
                            modifiableList.add(message);

                            context.dispatch(
                              UpdateChatStateAction(
                                messages: modifiableList,
                              ),
                            );

                            final String? sessionId = vm.sessionId;

                            if (sessionId != null || sessionId != '') {
                              context.dispatch(
                                GetMessagesAction(
                                  query: messageEditingController.text,
                                  sessionId: sessionId ?? '',
                                ),
                              );
                            }

                            messageEditingController.clear();
                          }
                        },
                        child: vm.wait!.isWaiting(getMessageFlag)
                            ? const CircularProgressIndicator(
                                color: AppColors.primaryColor,
                              )
                            : SvgPicture.asset(
                                sendMessageIconSvgPath,
                                height: 30,
                                width: 30,
                              ),
                      ),
                      size100VerticalSizedBox,
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
