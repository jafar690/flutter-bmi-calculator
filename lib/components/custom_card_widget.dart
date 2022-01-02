import 'package:flutter/cupertino.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {Key? key, required this.color, required this.child, this.onPress})
      : super(key: key);
  final Color color;
  final Widget child;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: child,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
