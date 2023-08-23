part of '../dashboard_main.dart';

class _DashboardAppbar extends AppBar {
  _DashboardAppbar() : super(title: const _UserAvatar());
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();

  @override
  Widget build(BuildContext context) {
    final name = context.user?.name;

    final text = name != null ? 'Hello, $name' : 'Welcome';
    return FittedBox(
      child: Text(text),
    );
  }
}
