import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active now',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              PopupMenuButton<String>(
                elevation: 2,
                offset: const Offset(0, 40),
                padding: const EdgeInsets.all(0),
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                itemBuilder: (context) => <PopupMenuEntry<String>>[
                  PopupMenuItem(
                    child: SizedBox(
                    child: const Text(
                      'Hide',
                      style: TextStyle(fontSize: 14),
                    ),
                    width: size.width * 0.4,
                  ))
                ],
              ),
            ],
          ),
        ),
        Container(
          height: size.width / 4,
          padding: const EdgeInsets.only(bottom: 10),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (context, index) => Column(
              children: [
                CircleAvatar(
                  radius: size.width / 14,
                  backgroundColor: Colors.red,
                ),
                const SizedBox(height: 5),
                Text('user $index')
              ],
            ),
            itemBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
        Divider(
          thickness: 10,
          color: Colors.grey.shade400,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              radius: size.width / 14,
            ),
            title: const Text('username', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('latest message'),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
