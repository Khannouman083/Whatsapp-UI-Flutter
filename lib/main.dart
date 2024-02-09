import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text("WhatsApp"),
              bottom: const TabBar(tabs: [
                Text(
                  "Chats",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Status",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Calls",
                  style: TextStyle(fontSize: 20),
                )
              ]),
              actions: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.add),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                    child: const Icon(Icons.more_vert),
                    itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: "Profile",
                            child: Text("Profile"),
                          ),
                          PopupMenuItem(
                            value: "Setting",
                            child: Text("Setting"),
                          ),
                          PopupMenuItem(
                            value: "Log out",
                            child: Text("Log out"),
                          ),
                        ]),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            body: TabBarView(children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.pink,
                            backgroundImage: NetworkImage("https://scontent.fisb2-1.fna.fbcdn.net/v/t39.30808-6/354427260_950231246024443_4459154729229206682_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=9c7eae&_nc_eui2=AeECrQeR5iLy3Ehv1MRrtgytF7004sWuSoMXvTTixa5Kg_lTaIrgMb3GcHSnnZt3KmPK1h_CabIYcbh01__reFnx&_nc_ohc=AzJ0ososYioAX-Yw0og&_nc_zt=23&_nc_ht=scontent.fisb2-1.fna&oh=00_AfBaJRr5IU1NbOWTFEnfgZGJdXkcxiRPLEOualFdfZuCXQ&oe=65CA6278"),
                          ),
                          title: Text("Nouman Khan"),
                          subtitle: Text("Hey man, where are you"),
                          trailing: Text("10:45 pm"),
                        );
                      } else {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://scontent.fisb2-1.fna.fbcdn.net/v/t1.6435-9/182132952_488036995577206_7707673493262731995_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=dd63ad&_nc_eui2=AeERQknzlHDo8tZHfzOV63cuzlR5W7xTR1nOVHlbvFNHWed3tl1ZrvJvluYYiljCAiTXxZK9k4SEJ49bGq2swVVK&_nc_ohc=LqxAoCzE4CQAX_ZHw7i&_nc_ht=scontent.fisb2-1.fna&oh=00_AfCpnNuoHbshYVKhMkZPUkqV6RWtq5JldK1J7w1Pzpdsxg&oe=65EDC29A"),
                          ),
                          title: Text("Salman Khan"),
                          subtitle: Text("What about your project"),
                          trailing: Text("3:32 am"),
                        );
                      }
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage("https://scontent.fisb2-2.fna.fbcdn.net/v/t1.6435-9/185793639_490697955311110_4227035874951035942_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=7a1959&_nc_eui2=AeFn6UL0ad1zYRM_2Ubyvsud8HlNA2cAN_jweU0DZwA3-Ii74lTUZ34chR2whFailoK1P0K3Dw9BAtRXfg8sZQ22&_nc_ohc=j8-lUPuLWSkAX_QTd9s&_nc_ht=scontent.fisb2-2.fna&oh=00_AfD29X2sT_JO022bHkf28HkXoIoESOCYfhkybXz_oSAQCw&oe=65EDDB05"),
                              ),
                              title: Text("Your Status"),
                              subtitle: Text("Tap to add status"),
                              trailing: Icon(Icons.add_circle),
                            ),
                            Divider(
                              thickness: 4,
                            )
                          ],
                        );
                      } else if (index > 0 && index % 2 == 0) {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://scontent.fisb2-1.fna.fbcdn.net/v/t39.30808-6/354427260_950231246024443_4459154729229206682_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=9c7eae&_nc_eui2=AeECrQeR5iLy3Ehv1MRrtgytF7004sWuSoMXvTTixa5Kg_lTaIrgMb3GcHSnnZt3KmPK1h_CabIYcbh01__reFnx&_nc_ohc=AzJ0ososYioAX-Yw0og&_nc_zt=23&_nc_ht=scontent.fisb2-1.fna&oh=00_AfBaJRr5IU1NbOWTFEnfgZGJdXkcxiRPLEOualFdfZuCXQ&oe=65CA6278"),

                          ),
                          title: Text("Nouman Khan"),
                          subtitle: Text("5 minutes ago"),
                        );
                      } else {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://scontent.fisb2-1.fna.fbcdn.net/v/t1.6435-9/182132952_488036995577206_7707673493262731995_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=dd63ad&_nc_eui2=AeERQknzlHDo8tZHfzOV63cuzlR5W7xTR1nOVHlbvFNHWed3tl1ZrvJvluYYiljCAiTXxZK9k4SEJ49bGq2swVVK&_nc_ohc=LqxAoCzE4CQAX_ZHw7i&_nc_ht=scontent.fisb2-1.fna&oh=00_AfCpnNuoHbshYVKhMkZPUkqV6RWtq5JldK1J7w1Pzpdsxg&oe=65EDC29A"),
                          ),
                          title: Text("Salman Khan"),
                          subtitle: Text("2 minutes ago"),
                        );
                      }
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return const Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage("https://scontent.fisb2-1.fna.fbcdn.net/v/t39.30808-6/354427260_950231246024443_4459154729229206682_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=9c7eae&_nc_eui2=AeECrQeR5iLy3Ehv1MRrtgytF7004sWuSoMXvTTixa5Kg_lTaIrgMb3GcHSnnZt3KmPK1h_CabIYcbh01__reFnx&_nc_ohc=AzJ0ososYioAX-Yw0og&_nc_zt=23&_nc_ht=scontent.fisb2-1.fna&oh=00_AfBaJRr5IU1NbOWTFEnfgZGJdXkcxiRPLEOualFdfZuCXQ&oe=65CA6278"),

                              ),
                              title: Text("Nouman Khan"),
                              subtitle: Text("Missed Voice Call"),
                              trailing: Icon(Icons.call),
                            ),
                          ],
                        );
                      } else {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://scontent.fisb2-1.fna.fbcdn.net/v/t1.6435-9/182132952_488036995577206_7707673493262731995_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=dd63ad&_nc_eui2=AeERQknzlHDo8tZHfzOV63cuzlR5W7xTR1nOVHlbvFNHWed3tl1ZrvJvluYYiljCAiTXxZK9k4SEJ49bGq2swVVK&_nc_ohc=LqxAoCzE4CQAX_ZHw7i&_nc_ht=scontent.fisb2-1.fna&oh=00_AfCpnNuoHbshYVKhMkZPUkqV6RWtq5JldK1J7w1Pzpdsxg&oe=65EDC29A"),
                          ),
                          title: Text("Salman Khan"),
                          subtitle: Text("Missed Video Call"),
                          trailing: Icon(Icons.video_call),
                        );
                      }
                    }),
              ),
            ]),
          ),
        ));
  }
}
