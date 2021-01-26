import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading, trailing;
  final String title;

  const CustomAppbar({Key key, this.leading, this.trailing, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SizedBox(width: 50, child: leading),
          Spacer(),
          if (title != null)
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          Spacer(),
          SizedBox(width: 50, child: trailing),
        ],
      ),
    );
  }

  @SemanticsHintOverrides()
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
