import 'package:flutter/material.dart';

void snackbar(
    final BuildContext context, {
      required final String message,
      final Color? messageColor,
      final Color? backgroundColor,
      final String? actionLabel,
      final Color? actionLabelColor,
      final VoidCallback? onPressed,
    }) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: messageColor != null
              ? TextStyle(
            color: messageColor,
          )
              : null,
        ),
        backgroundColor: backgroundColor,
        action: SnackBarAction(
          label: actionLabel ?? 'Tutup',
          textColor: actionLabelColor,
          onPressed: () => onPressed?.call(),
        ),
      ),
    );
}
