import 'package:flutter/material.dart';

class DynamicExpansionTile extends StatefulWidget {
  const DynamicExpansionTile({super.key});

  @override
  _DynamicExpansionTileState createState() => _DynamicExpansionTileState();
}

class _DynamicExpansionTileState extends State<DynamicExpansionTile>
    with TickerProviderStateMixin {
  late TabController _tabController1;
  late TabController _tabController2;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 3, vsync: this);
    _tabController2 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController1.dispose();
    _tabController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic ExpansionTile'),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: const Text('Tap to expand 1'),
            children: [
              Column(
                children: [
                  TabBar(
                    controller: _tabController1,
                    tabs: const [
                      Tab(icon: Icon(Icons.contacts), text: 'Contacts'),
                      Tab(icon: Icon(Icons.email), text: 'Emails'),
                      Tab(icon: Icon(Icons.settings), text: 'Settings'),
                    ],
                  ),
                  SizedBox(
                    height: 300,
                    child: TabBarView(
                      controller: _tabController1,
                      children: const [
                        ContactsTab(),
                        EmailsTab(),
                        SettingsTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Tap to expand 2'),
            children: [
              Column(
                children: [
                  TabBar(
                    controller: _tabController2,
                    tabs: const [
                      Tab(icon: Icon(Icons.home), text: 'Home'),
                      Tab(icon: Icon(Icons.favorite), text: 'Favorite'),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5, //300,
                    child: TabBarView(
                      controller: _tabController2,
                      children: const [
                        HomeTab(),
                        FavoriteTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Contacts, Emails, Settings tabs

class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = List<String>.generate(10, (index) => 'Contact $index');
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8.0),
          elevation: 4.0,
          child: ListTile(
            title: Text(contacts[index]),
          ),
        );
      },
    );
  }
}

class EmailsTab extends StatelessWidget {
  const EmailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final emails = List<String>.generate(5, (index) => 'Email $index');
    return ListView.builder(
      itemCount: emails.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(emails[index]),
        );
      },
    );
  }
}

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = List<String>.generate(7, (index) => 'Setting $index');
    return ListView.builder(
      itemCount: settings.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: Text(settings[index]),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Details for ${settings[index]}'),
            ),
          ],
        );
      },
    );
  }
}

// Home, Favorite tabs

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final homes = List<String>.generate(3, (index) => 'Home $index');
    return ListView.builder(
      itemCount: homes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(homes[index]),
        );
      },
    );
  }
}

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = List<String>.generate(4, (index) => 'Favorite $index');
    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(favorites[index]),
        );
      },
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: DynamicExpansionTile(),
  ));
}
