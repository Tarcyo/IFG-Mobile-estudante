import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/screens/mainTabBar/tabBarController.dart';
import 'tabBarScreens/instituteScreen/instituteScreen.dart';
import 'tabBarScreens/linkScreen/linkScreen.dart';
import 'tabBarScreens/homeScreen/homeScreen.dart';
import 'tabBarScreens/aboutsScreen/aboutsScreen.dart';

class MainTabBar extends StatelessWidget {
  const MainTabBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBarController(
      items: [
        TabBarItem(
          
          widget: const HomeScreenTab(),
          icon: Icons.home,
          title: 'Inicio',
        ),
        TabBarItem(
          widget: const InstituteScreenTab(),
          icon: Icons.business,
          title: 'Instituição',
        ),
        TabBarItem(
          widget: const LinkScreenTab(),
          icon: Icons.link,
          title: 'Links',
        ),
        TabBarItem(
          widget: const AboutsScreenTab(),
          icon: Icons.workspace_premium,
          title: 'Dedicatória',
        ),
      ],
    );
  }
}

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  _HomeScreenTabState createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return HomeScreen();
  }

  @override
  bool get wantKeepAlive => true;
}

class InstituteScreenTab extends StatefulWidget {
  const InstituteScreenTab({Key? key}) : super(key: key);

  @override
  _InstituteScreenTabState createState() => _InstituteScreenTabState();
}

class _InstituteScreenTabState extends State<InstituteScreenTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InstituteScreen();
  }

  @override
  bool get wantKeepAlive => true;
}

class LinkScreenTab extends StatefulWidget {
  const LinkScreenTab({Key? key}) : super(key: key);

  @override
  _LinkScreenTabState createState() => _LinkScreenTabState();
}

class _LinkScreenTabState extends State<LinkScreenTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LinkScreen();
  }

  @override
  bool get wantKeepAlive => true;
}

class AboutsScreenTab extends StatefulWidget {
  const AboutsScreenTab({Key? key}) : super(key: key);

  @override
  _AboutsScreenTabState createState() => _AboutsScreenTabState();
}

class _AboutsScreenTabState extends State<AboutsScreenTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AboutsScreen();
  }

  @override
  bool get wantKeepAlive => true;
}
