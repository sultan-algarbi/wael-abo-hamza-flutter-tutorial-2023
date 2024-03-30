import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String image;

  const CustomListTile({
    super.key,
    required this.name,
    required this.email,
    required this.date,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/$image'),
        ),
        title: Text(name),
        subtitle: Text(email),
        trailing: Text(date),
      ),
    );
  }
}
