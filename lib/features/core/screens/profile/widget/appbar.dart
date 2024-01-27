import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
    required this.isDark,
    required this.title,
    this.onPress,
  });

  final bool isDark;
  final String title;
  final VoidCallback? onPress;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onPress,
        icon: const Icon(
          LineAwesomeIcons.angle_left,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
      actions: [
         IconButton(
            onPressed: () {},
            icon: Icon(
              isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
