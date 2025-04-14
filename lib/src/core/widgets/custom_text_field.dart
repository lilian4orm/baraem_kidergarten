import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required TextEditingController textController,
    this.hintText,
    this.onValidate,
    this.type,
  }) : _emailController = textController;

  final TextEditingController _emailController;

  final String? hintText;
  final String? Function(String?)? onValidate;
  final TextFieldType? type;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscurePassword = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _obscurePassword = widget.type == TextFieldType.password;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: widget._emailController,
      keyboardType: TextInputType.emailAddress,

      obscureText: _obscurePassword,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: _getPrefixIcon(widget.type),
        suffixIcon: _getSuffixIcon(widget.type),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: theme.colorScheme.primaryContainer),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: theme.colorScheme.primaryContainer),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
        ),
        filled: true,
        fillColor: theme.colorScheme.surface,
      ),
      validator: (value) => widget.onValidate!(value),
    );
  }

  IconButton? _getSuffixIcon(TextFieldType? type) {
    if (type != TextFieldType.password) {
      return null;
    }
    return IconButton(
      icon: Icon(_obscurePassword ? LucideIcons.eyeOff : LucideIcons.eye),
      onPressed: () {
        setState(() {
          _obscurePassword = !_obscurePassword;
        });
      },
    );
  }

  _getPrefixIcon(TextFieldType? type) {
    return type == TextFieldType.email
        ? const Icon(LucideIcons.mail)
        : type == TextFieldType.password
        ? _getPasswordIcon()
        : null;
  }

  _getPasswordIcon() {
    return const Icon(LucideIcons.lock);
  }
}

enum TextFieldType { email, password }
