import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/domain/core/entities/message/message.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  late List<Message> messages = <Message>[];

  TextEditingController messageEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadChatData();
  }

  Future<void> loadChatData() async {
    String jsonString = await rootBundle.loadString('assets/messages.json');
    List<dynamic> jsonList = json.decode(jsonString)['messages'];

    setState(() {
      messages = jsonList
          .map(
            // ignore: always_specify_types
            (item) => Message(
              id: item['id'],
              sender: item['sender'],
              content: item['content'],
            ),
          )
          .toList();
    });
  }

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
          trailingWidget: const Icon(Icons.more_horiz_rounded, size: 30),
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: messages.map((Message message) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 5,
                    ),
                    child: Align(
                      alignment: message.sender == 'user'
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
                          message.content,
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
                    focusedBorderColor: Colors.transparent,
                    customFillColor: AppColors.whiteColor,
                  ),
                ),
                smallHorizontalSizedBox,
                GestureDetector(
                  onTap: () {
                    if (messageEditingController.text.isNotEmpty) {
                      setState(() {
                        messages.add(
                          Message(
                            id: messages.length + 1,
                            sender: 'user',
                            content: messageEditingController.text,
                          ),
                        );
                        messageEditingController.clear();
                      });
                    }
                  },
                  child: SvgPicture.asset(
                    sendMessageIconSvgPath,
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
