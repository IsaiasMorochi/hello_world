import 'package:flutter/material.dart';
import 'package:hello_world/listview_widget/model/ContactModel.dart';
import 'package:hello_world/listview_widget/pages/ContactItem.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> _contacts;

  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return new ListView(children: _buildContactList());
  }

  List<ContactItem> _buildContactList() {
    return _contacts.map((contact) => new ContactItem(contact)).toList();
  }
}
