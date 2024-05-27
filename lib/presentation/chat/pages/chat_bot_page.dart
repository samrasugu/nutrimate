import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/application/redux/actions/chat/get_messages_action.dart';
import 'package:nutrimate/application/redux/actions/chat/update_chat_messages_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/chat_page_view_model.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
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
          trailingWidget: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.settings);
            },
            child: const Icon(Icons.more_horiz_rounded, size: 30),
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
                                    : AppColors.lightGreyColor.withOpacity(.5),
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
                              vm.wait.isWaiting(getMessageFlag) ? false : true,
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
                            final String nextId =
                                (int.parse(existingMessages.last?.id ?? '') + 1)
                                    .toString();

                            Message message = Message(
                              id: nextId,
                              sender: 'user',
                              content: messageEditingController.text,
                            );
                            modifiableList.add(message);

                            context.dispatch(
                              UpdateChatMessagesAction(
                                messages: modifiableList,
                              ),
                            );

                            context.dispatch(
                              GetMessagesAction(
                                query: messageEditingController.text,
                              ),
                            );

                            messageEditingController.clear();
                          }
                        },
                        child: vm.wait.isWaiting(getMessageFlag)
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
