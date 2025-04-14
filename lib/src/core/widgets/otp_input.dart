// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:super_baraem_kidergarten/bussines_logic/inputs/cubit/input_cubit.dart';
// import 'package:super_baraem_kidergarten/utils/extention.dart';
// import 'package:super_baraem_kidergarten/utils/utils.dart';

// class OTPWdiget extends StatelessWidget {
//   const OTPWdiget(
//       {Key? key,
//       this.controller,
//       this.borderColor,
//       this.backgroundColor,
//       this.onFocus,
//       this.leftPadding,
//       this.rightPadding,
//       this.bottomPadding,
//       this.topPadding,
//       this.maxLength,
//       this.autofocus = false,
//       required this.index})
//       : super(key: key);

//   final TextEditingController? controller;

//   final Color? borderColor;

//   final Color? backgroundColor;
//   final double? leftPadding;
//   final double? rightPadding;
//   final double? topPadding;
//   final double? bottomPadding;
//   final int? maxLength;
//   final bool autofocus;
//   final int index;
//   final void Function(bool isFocus)? onFocus;
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final loginController = context.read<InputCubit>();
//     //print("add listener to index=$index");
//     loginController.state.nodes[index].onKeyEvent = (node, event) {
//       if (event is! KeyDownEvent) {
//         return KeyEventResult.ignored;
//       }
//       kdp(name: "keyboard listener", msg: event is KeyDownEvent, c: 'm');
//       if (event.character == null &&
//           event.logicalKey != LogicalKeyboardKey.backspace) {
//         return KeyEventResult.ignored;
//       }
//       return KeyEventResult.ignored;
//       if (event.logicalKey == LogicalKeyboardKey.backspace) {
//         controller!.text = "";
//         if (index == 0) {
//           return KeyEventResult.handled;
//         }
//         FocusScope.of(context).previousFocus();

//         return KeyEventResult.skipRemainingHandlers;
//       }
//       kdp(name: "keyboard listener", msg: controller!.text, c: 'cy');
//       controller!.text = event.character ?? controller!.text;

//       if (index < 5) {
//         FocusScope.of(context).nextFocus();
//       }
//       return KeyEventResult.ignored;
//     };
//     return TextFormField(
//       focusNode: loginController.state.nodes[index],
//       maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
//       keyboardType: TextInputType.number,
//       controller: controller,
//       inputFormatters: [
//         LengthLimitingTextInputFormatter(1),
//         FilteringTextInputFormatter.digitsOnly
//       ],
//       onChanged: (f) {
//         if (f.length == 1) {
//           if (index < 5) {
//             FocusScope.of(context).nextFocus();
//           }
//         }
//         // else {
//         //   if (index > 0) {
//         //     FocusScope.of(context).previousFocus();
//         //   }
//         // }
//       },
//       autofocus: autofocus,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.all(0),
//         fillColor: theme.scaffoldBackgroundColor,
//         filled: true,
//         hintStyle: theme.textTheme.bodyLarge,
//         errorStyle: const TextStyle(fontSize: 0, height: 0),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(
//             kDefaultBorderRadius,
//           ),
//           borderSide: const BorderSide(color: Colors.transparent),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(
//             kDefaultBorderRadius,
//           ),
//           borderSide: BorderSide(color: Colors.red),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(
//             kDefaultBorderRadius,
//           ),
//           borderSide: BorderSide(color: Colors.red),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(
//             kDefaultBorderRadius,
//           ),
//           borderSide: const BorderSide(color: Colors.transparent),
//         ),
//       ),
//       textAlign: TextAlign.center,
//       style: theme.textTheme.titleSmall,
//       validator: (h) {
//         if (h == null || h.isEmpty) {
//           return '';
//         }
//         return null;
//       },
//     );
//   }
// }
