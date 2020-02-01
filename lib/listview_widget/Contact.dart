import 'package:flutter/material.dart';
import 'package:hello_world/listview_widget/model/ContactModel.dart';
import 'package:hello_world/listview_widget/pages/ContacList.dart';

class Contact extends StatelessWidget {
  _buildList() {
    return <ContactModel>[
      const ContactModel(name: "Isaias Morochi", email: "imorochi@mail.com"),
      const ContactModel(name: "Linux Tolvar", email: "linux.tolvar@mail.com"),
      const ContactModel(name: "Steve Wozniak", email: "steve.wosniak@mail.com"),
      const ContactModel(name: "Robert Martin", email: "robert.martin@mail.com"),
      const ContactModel(name: "Denia Ritchie", email: "dennis.ritchie@mail.com"),
      const ContactModel(name: "Isaias Morochi", email: "imorochi@mail.com"),
      const ContactModel(name: "Linux Tolvar", email: "linux.tolvar@mail.com"),
      const ContactModel(name: "Steve Wozniak", email: "steve.wosniak@mail.com"),
      const ContactModel(name: "Robert Martin", email: "robert.martin@mail.com"),
      const ContactModel(name: "Denia Ritchie", email: "dennis.ritchie@mail.com"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ContactList(_buildList()),
    );
  }
}
