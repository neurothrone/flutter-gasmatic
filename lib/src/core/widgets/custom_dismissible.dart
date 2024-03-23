import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomDismissible extends StatefulWidget {
  const CustomDismissible({
    super.key,
    required this.onDelete,
    required this.child,
  });

  final VoidCallback onDelete;
  final Widget child;

  @override
  State<CustomDismissible> createState() => _CustomDismissibleState();
}

class _CustomDismissibleState extends State<CustomDismissible> {
  final ValueNotifier<bool> _isIconVisible = ValueNotifier(true);
  final ValueNotifier<bool> _isIconAnimating = ValueNotifier(false);

  @override
  void dispose() {
    _isIconVisible.dispose();
    _isIconAnimating.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(0.5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(AppDimensions.borderRadius),
              ),
              color: Colors.redAccent,
            ),
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              ValueListenableBuilder(
                valueListenable: _isIconAnimating,
                builder: (context, animating, Widget? child) {
                  return AnimatedOpacity(
                    opacity: !animating ? 1.0 : 0.0,
                    duration: const Duration(
                      milliseconds: AppConstants.animationDuration - 100,
                    ),
                    onEnd: () {
                      _isIconVisible.value = false;
                    },
                    child: ValueListenableBuilder<bool>(
                      valueListenable: _isIconVisible,
                      builder: (context, visible, child) {
                        return Visibility(
                          visible: visible,
                          child: const Padding(
                            padding: EdgeInsets.only(right: AppSizes.s20),
                            child: Icon(Icons.delete, color: Colors.white),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Dismissible(
                key: ValueKey(widget.key),
                direction: DismissDirection.endToStart,
                onDismissed: (_) {
                  widget.onDelete();
                },
                confirmDismiss: (_) {
                  _isIconAnimating.value = true;
                  return Future.value(true);
                },
                resizeDuration: const Duration(
                  milliseconds: AppConstants.animationDuration,
                ),
                movementDuration: const Duration(
                  milliseconds: AppConstants.animationDuration - 100,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: AppSizes.s10),
                  child: widget.child,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
