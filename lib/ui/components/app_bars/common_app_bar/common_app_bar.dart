import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  const CommonAppBar({
    Key? key,
    this.title,
    this.imageUrl,
    this.trailing,
  }) : super(key: key);
  final String? title;
  final String? imageUrl;
  final List<Widget>? trailing;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: trailing,
      iconTheme: const IconThemeData(color: Colors.black),
      leadingWidth: 75,
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            )
          : const FaIcon(
              FontAwesomeIcons.twitter,
              color: Colors.blue,
            ),
      leading: imageUrl != null && imageUrl!.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl!),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
