import 'package:flutter/material.dart';
import 'package:myapp/widgets/chat_section_widget.dart';
import 'package:myapp/widgets/contacts_list_widget.dart';
import 'package:myapp/widgets/filter_bar_widget.dart';
import 'package:myapp/widgets/home_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: HomeAppBarWidget(
                  onLogoutTAp: logout,
                  userName: 'Geovanni',
                  unreadChatCount: 48,
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, top: 8, bottom: 16),
                  child: ContactsListWidget(),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const FilterBarWidget(),
                      const SizedBox(height: 8.0),
                      Expanded(
                        child: ListView(
                          children: const [
                            ChatSectionWidget(label: 'Pinned Messege(2)'),
                            ChatSectionWidget(label: 'All Message(7)'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
