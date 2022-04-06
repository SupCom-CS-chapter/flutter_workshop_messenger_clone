import 'package:flutter/material.dart';
import 'package:messenger_clone/views/login.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static const style = TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: size.width / 7,
                ),
                const SizedBox(height: 10.0),
                const Text('username',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        // Acessibility settings
        ListTile(
          title: const Text('Active Status', style: style,),
          subtitle: const Text('On', style: TextStyle(color: Colors.grey),),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/active_status.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Message requests', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/message_requests.png')),
          onTap: (){},
        ),
        // Preferences settings
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
          child: Text('Preferences', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          title: const Text('Notifications & Sounds', style: style,),
          subtitle: const Text('On', style: TextStyle(color: Colors.grey),),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/notifications_sounds.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Manage storage', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/manage_storage.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('People', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/people.png')),
          onTap: (){},
        ),
        // Account & support settings
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
          child: Text('Preferences', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          title: const Text('Switch Account', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/switch_accounts.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Account settings', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/account_settings.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Report a problem', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/report_problem.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Help', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/help.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Legal & policies', style: style),
          leading: SizedBox(width: 35, child: Image.asset('assets/settings_icons/legal_policies.png')),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Log out', style: style),
          leading: const Icon(Icons.logout, color: Colors.red,),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
          },
        )
      ],
    );
  }
}
