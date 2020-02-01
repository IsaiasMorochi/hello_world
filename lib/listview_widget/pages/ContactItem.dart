import 'package:flutter/material.dart';
import 'package:hello_world/listview_widget/model/ContactModel.dart';

class ContactItem extends StatelessWidget {
  final ContactModel _contact;

  ContactItem(this._contact);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new CircleAvatar(
        child: new Text(_contact.name[0], style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.redAccent,
      ),
      title: new Text(_contact.name),
      subtitle: new Text(_contact.email),
    );
  }
}
