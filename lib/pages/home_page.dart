import 'package:flutter/material.dart';
import 'package:myapp/widgets/contacts_list_widget.dart';
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
            ],
          ),
        ));
  }
}
