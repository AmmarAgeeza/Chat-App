import 'package:chat_app_thrwat/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/message.dart';
import '../widgets/chat_buble.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);
  static String id = 'ChatPage';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  CollectionReference messages =
      FirebaseFirestore.instance.collection(messagesCollection);
  TextEditingController controller = TextEditingController();
  final ScrollController _controller = ScrollController();
  void _scrollDown() {
    _controller.animateTo(
      0,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
    );
  }
  @override
  Widget build(BuildContext context) {
   var email= ModalRoute.of(context)!.settings.arguments ;
   print(email);
    return StreamBuilder<QuerySnapshot>(
        stream: messages.orderBy(kCreatedAt,descending: true).snapshots(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            List<Message> messagesList = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      logo,
                      height: 50,
                    ),
                    const Text('Chat'),
                  ],
                ),
                backgroundColor: kPrimaryColor,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      controller: _controller,
                        itemCount: messagesList.length,
                        itemBuilder: (ctx, index) {
                          return messagesList[index].id ==email?ChatBuble(
                            message: messagesList[index].message,
                          ):ChatBubleFromFriend(
                            message: messagesList[index].message,
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                          hintText: 'Send Message',
                          suffixIcon: IconButton(
                              onPressed: () async {
                                await messages.add({
                                  kMessage: controller.text,
                                  kCreatedAt: DateTime.now(),
                                  kMessageId:email,
                                });
                                controller.clear();
                                _scrollDown();
                              },
                              icon: const Icon(Icons.send)),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
