import 'package:flutter/material.dart';

import 'is_correct.dart';


class CustomRadio extends StatefulWidget {
  const CustomRadio({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 22,
    this.borderRadius = 6, // не используется, оставлен для полного соответствия API
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
  final double borderRadius; // форма круглая, параметр не влияет
  final IsCorrect? isCorrect;
  final Color? activeColor;
  final Color? inactiveBorderColor;
  final Widget? label;
  final String? semanticLabel;
  final bool enabled;

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
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

    final checkbox = FocusableActionDetector(
      onShowFocusHighlight: (f) => setState(() => _focused = f),
      onShowHoverHighlight: (h) => setState(() => _hovered = h),
      mouseCursor: widget.enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: Semantics(
        label: widget.semanticLabel ?? 'radio',
        checked: widget.value,
        enabled: widget.enabled,
        inMutuallyExclusiveGroup: true,
        button: true,
        child: InkWell(
          onTap: widget.enabled ? _toggle : null,
          customBorder: const CircleBorder(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 140),
            curve: Curves.easeOut,
            height: boxSide,
            width: boxSide,
            decoration: BoxDecoration(
              shape: BoxShape.circle,               // ← круглая форма
              color: bgColor,
              border: Border.all(width: 2, color: borderColor),
              boxShadow: _focused
                  ? [BoxShadow(blurRadius: 6, spreadRadius: 1, color: active.withOpacity(.25))]
                  : null,
            ),
            alignment: Alignment.center,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 120),
              opacity: widget.value ? 1 : 0,
              // те же ассеты, что и в чекбоксе
              child: isIncorrect
                  ? Image.asset(
                "assets/close.png",
                width: boxSide * 0.68,
                height: boxSide * 0.68,
                fit: BoxFit.contain,
              )
                  : Image.asset(
                "assets/okay.png",
                width: boxSide * 0.68,
                height: boxSide * 0.68,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );

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
