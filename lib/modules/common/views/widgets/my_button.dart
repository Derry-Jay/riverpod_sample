import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  final Widget? child;
  final ButtonType type;
  final double? elevation;
  final OutlinedBorder? shape;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  const MyButton({
    super.key,
    this.child,
    this.shape,
    this.padding,
    this.onPressed,
    this.elevation,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      type: type,
      onPressed: onPressed,
      buttonColor: context.themeMaterial.primaryColor,
      child: child,
    );
  }
}
