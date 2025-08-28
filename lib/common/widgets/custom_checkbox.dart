import 'package:flutter/material.dart';

enum IsCorrect { correct, incorrect }

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 22,
    this.borderRadius = 6,
    this.activeColor,
    this.inactiveBorderColor,
    this.label,
    this.semanticLabel,
    this.enabled = true,
    this.isCorrect,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final double size;
  final double borderRadius;
  final IsCorrect? isCorrect;
  final Color? activeColor;
  final Color? inactiveBorderColor;
  final Widget? label;
  final String? semanticLabel;
  final bool enabled;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _hovered = false;
  bool _focused = false;

  void _toggle() {
    if (widget.enabled && widget.onChanged != null) {
      widget.onChanged!(!widget.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Если incorrect — используем цвет ошибки и крестик
    final bool isIncorrect = widget.isCorrect == IsCorrect.incorrect;
    final Color active =
    isIncorrect ? Colors.red : (widget.activeColor ?? theme.colorScheme.primary);

    final Color inactive = widget.inactiveBorderColor ?? theme.dividerColor;
    final Color disabled = theme.disabledColor;

    final double boxSide = widget.size;

    final Color borderColor = !widget.enabled
        ? disabled
        : widget.value
        ? active
        : (_focused ? active : (_hovered ? inactive.withOpacity(.8) : inactive));

    final Color bgColor = !widget.enabled
        ? disabled.withOpacity(.2)
        : widget.value
        ? active
        : Colors.transparent;

    final Color iconColor = widget.value ? Colors.white : Colors.transparent;
    final IconData iconData = isIncorrect ? Icons.close : Icons.check;

    final checkbox = FocusableActionDetector(
      onShowFocusHighlight: (f) => setState(() => _focused = f),
      onShowHoverHighlight: (h) => setState(() => _hovered = h),
      mouseCursor: widget.enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: Semantics(
        label: widget.semanticLabel ?? 'checkbox',
        checked: widget.value,
        enabled: widget.enabled,
        button: true,
        child: InkWell(
          onTap: widget.enabled ? _toggle : null,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 140),
            curve: Curves.easeOut,
            height: boxSide,
            width: boxSide,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: Border.all(width: 2, color: borderColor),
              boxShadow: _focused
                  ? [BoxShadow(blurRadius: 6, spreadRadius: 1, color: active.withOpacity(.25))]
                  : null,
            ),
            alignment: Alignment.center,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 120),
              opacity: widget.value ? 1 : 0,
              child: isIncorrect?Image.asset("assets/close.png"):Image.asset("assets/okay.png"),
            ),
          ),
        ),
      ),
    );

    // Подпись
    final content = widget.label == null
        ? checkbox
        : GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.enabled ? _toggle : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          checkbox,
          const SizedBox(width: 10),
          Flexible(
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: widget.enabled
                    ? theme.textTheme.bodyMedium?.color
                    : disabled,
              ),
              child: widget.label!,
            ),
          ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: content,
    );
  }
}
