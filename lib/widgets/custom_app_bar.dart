import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({Key? key, required this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 600;
    
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: isDesktop ? 18 : 20,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      toolbarHeight: isDesktop ? 50 : kToolbarHeight,
      actions: actions ?? [
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined, 
            color: Colors.black,
            size: isDesktop ? 22 : 24,
          ),
          onPressed: () {},
        ),
      ],
      iconTheme: IconThemeData(
        color: Colors.black,
        size: isDesktop ? 22 : 24,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}