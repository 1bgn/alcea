import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomPrimaryButton extends StatefulWidget {
  const CustomPrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.icon,
    this.height = 78,
    this.minWidth = 140,
    this.borderRadius = 8,
    this.gradient,
    this.backgroundColor,
    this.disabledColor,
    this.enabledTextStyle,   // ⬅️ новый параметр
    this.disabledTextStyle,  // ⬅️ новый параметр
    this.loading = false,
    this.elevation = 0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.enableHaptics = true,
    this.borderColor,
    this.borderWidth = 1.5,
    this.enabled = true,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? icon;

  final double height;
  final double minWidth;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry padding;

  final Gradient? gradient;
  final Color? backgroundColor;
  final Color? disabledColor;
  final TextStyle? enabledTextStyle;   // ⬅️
  final TextStyle? disabledTextStyle;  // ⬅️
  final Color? borderColor;
  final double borderWidth;
  final bool loading;
  final bool enableHaptics;
  final bool enabled;

  @override
  State<CustomPrimaryButton> createState() => _CustomPrimaryButtonState();
}

class _CustomPrimaryButtonState extends State<CustomPrimaryButton> {
  bool _hovered = false;

  bool get _enabled =>
      widget.enabled && widget.onPressed != null && !widget.loading;

  Future<void> _tapUp(TapUpDetails _) async {
    if (!_enabled) return;
    if (widget.enableHaptics) HapticFeedback.selectionClick();
    widget.onPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final baseColor = widget.backgroundColor ?? theme.colorScheme.primary;
    final shadow = (_enabled && _hovered ? widget.elevation * 1.2 : widget.elevation)
        .clamp(0, 40.0)
        .toDouble();

    final radius = BorderRadius.circular(widget.borderRadius);

    // выбираем текстовый стиль в зависимости от enabled
    final defaultEnabledStyle = theme.textTheme.labelLarge!.copyWith(
      color: Colors.white,
      letterSpacing: .0,
    );
    final defaultDisabledStyle = theme.textTheme.labelLarge!.copyWith(
      color: theme.disabledColor,
      letterSpacing: .0,
    );

    final effectiveTextStyle =
    _enabled ? (widget.enabledTextStyle ?? defaultEnabledStyle)
        : (widget.disabledTextStyle ?? defaultDisabledStyle);

    final iconColor = effectiveTextStyle.color ?? Colors.white;

    // текст + иконка справа
    final content = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: DefaultTextStyle(
            style: effectiveTextStyle,
            child: widget.child,
          ),
        ),
        if (widget.loading) ...[
          const SizedBox(width: 16),
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.4,
              valueColor: AlwaysStoppedAnimation<Color>(iconColor),
            ),
          ),
        ] else if (widget.icon != null) ...[
          const SizedBox(width: 16),
          IconTheme(
            data: IconThemeData(size: 20, color: iconColor),
            child: widget.icon!,
          ),
        ],
      ],
    );

    final borderSide = widget.borderColor != null
        ? BorderSide(
      color: _enabled
          ? widget.borderColor!
          : widget.borderColor!.withOpacity(.6),
      width: widget.borderWidth,
    )
        : BorderSide.none;

    return FocusableActionDetector(
      onShowHoverHighlight: (h) => setState(() => _hovered = h),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: radius,
          boxShadow: [
            if (shadow > 0)
              BoxShadow(
                blurRadius: shadow,
                spreadRadius: shadow * 0.06,
                offset: Offset(0, shadow * 0.25),
                color: Colors.black.withOpacity(0.25),
              ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: radius, side: borderSide),
          clipBehavior: Clip.antiAlias,
          child: Ink(
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: radius,
              color: widget.gradient == null ? baseColor : null,
              gradient: widget.gradient,
            ),
            child: InkWell(
              onTapUp: _enabled ? _tapUp : null,
              splashFactory: InkSparkle.splashFactory,
              borderRadius: radius,
              child: Padding(
                padding: widget.padding,
                child: Center(child: content),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
