// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../helpers/constants.dart';
// import '../../helpers/enums.dart';

// class InputAutoComplete extends StatefulWidget {
//   final String label;
//   final EdgeInsets padding;
//   final double borderRadius;
//   final bool isEnabled;
//   final bool isBorderEnabled;
//   final InputSize size;
//   final double height;
//   final Color? optionsBackgroundColor;
//   final bool isShadowEnabled;
//   final IconData? icon;
//   final Color? iconBackgroundColor;
//   final Color? iconColor;
//   final List<String> hints;
//   final String? Function(String?)? validator;
//   final AutovalidateMode? autoValidateMode;
//   final List<TextInputFormatter>? inputFormatters;
//   final Function(dynamic)? onSelected;

//   const InputAutoComplete({
//     super.key,
//     required this.label,
//     this.padding = allPadding12,
//     this.borderRadius = defaultPadding / 2,
//     this.isBorderEnabled = true,
//     this.isEnabled = true,
//     this.size = InputSize.medium,
//     this.height = 250,
//     this.optionsBackgroundColor,
//     this.isShadowEnabled = false,
//     this.icon,
//     this.iconBackgroundColor,
//     this.iconColor,
//     required this.hints,
//     this.validator,
//     this.autoValidateMode,
//     this.inputFormatters,
//     this.onSelected,
//   });

//   @override
//   State<InputAutoComplete> createState() => _InputAutoCompleteState();
// }

// class _InputAutoCompleteState extends State<InputAutoComplete> {
//   final controller = TextEditingController();
//   bool _optionsAvailable = false;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (ctx, constraints) {
//         return Autocomplete<String>(
//           optionsBuilder: (TextEditingValue textEditingValue) {
//             List<String> hints = widget.hints
//                 .where(
//                   (String hint) => hint.toLowerCase().contains(textEditingValue.text.toLowerCase()),
//                 )
//                 .toList();
//             setState(() {
//               _optionsAvailable = hints.isNotEmpty && textEditingValue.text != hints.first;
//             });
//             return hints;
//           },
//           displayStringForOption: (String hint) => hint,
//           onSelected: (String selection) {
//             if (widget.onSelected != null) {
//               widget.onSelected!(selection);
//             }
//           },
//           optionsViewBuilder: (BuildContext context, onSelected, options) {
//             return Align(
//               alignment: Alignment.topLeft,
//               child: Material(
//                 child: Container(
//                   width: constraints.maxWidth,
//                   height: widget.height,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(widget.borderRadius),
//                       bottomRight: Radius.circular(widget.borderRadius),
//                     ),
//                     border: widget.isBorderEnabled
//                         ? Border.all(color: AppTheme.colors['black']!.shade300)
//                         : null,
//                     boxShadow: !widget.isShadowEnabled
//                         ? null
//                         : const [
//                             BoxShadow(
//                               color: Color(0x44000000),
//                               offset: Offset(0, 1),
//                               blurRadius: 8.0,
//                               spreadRadius: 0.0,
//                             ),
//                           ],
//                     color: widget.optionsBackgroundColor ?? AppTheme.colors['primary']!.shade50,
//                   ),
//                   child: ListView.builder(
//                     padding: const EdgeInsets.all(10.0),
//                     itemCount: options.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       final String option = options.elementAt(index);
//                       return Column(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {});
//                               FocusScope.of(context).focusedChild?.unfocus();
//                               onSelected(option);
//                             },
//                             child: ListTile(
//                               title: Text(option),
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             );
//           },
//           fieldViewBuilder: (
//             BuildContext context,
//             TextEditingController fieldTextEditingController,
//             FocusNode fieldFocusNode,
//             VoidCallback onFieldSubmitted,
//           ) {
//             return TextFormField(
//               onTap: () {
//                 setState(() {});
//                 if (fieldFocusNode.hasFocus) fieldFocusNode.unfocus();
//               },
//               decoration: InputDecoration(
//                 contentPadding: widget.padding,
//                 border: border(AppTheme.colors['black']!.shade400),
//                 enabledBorder: border(AppTheme.colors['black']!.shade400),
//                 disabledBorder: border(AppTheme.colors['black']!.shade300),
//                 focusedBorder: !_optionsAvailable
//                     ? border(AppTheme.colors['black']!.shade400)
//                     : OutlineInputBorder(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(widget.borderRadius),
//                           topRight: Radius.circular(widget.borderRadius),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                           color: AppTheme.colors['black']!.shade400,
//                         ),
//                       ),
//                 errorBorder: border(AppTheme.colors['danger']!.shade400),
//                 focusedErrorBorder: border(AppTheme.colors['danger']!.shade400),
//                 errorStyle: TextStyle(color: AppTheme.colors['danger']!.shade400),
//                 hintText: widget.label,
//                 hintStyle: TextStyle(
//                   fontSize: getFontSize(),
//                   color: widget.isEnabled
//                       ? AppTheme.colors['black']!.shade400
//                       : AppTheme.colors['black']!.shade300,
//                 ),
//                 suffixIcon: InkWell(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(widget.borderRadius),
//                         bottomRight: fieldFocusNode.hasFocus && _optionsAvailable
//                             ? Radius.zero
//                             : Radius.circular(widget.borderRadius),
//                       ),
//                       color: widget.iconBackgroundColor ?? AppTheme.colors['primary'],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         FaIcon(
//                           widget.icon ?? FontAwesomeIcons.angleDown,
//                           size: getFontSize() * 1.3,
//                           color: widget.iconColor ?? AppTheme.colors['white'],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               controller: fieldTextEditingController,
//               focusNode: fieldFocusNode,
//               style: TextStyle(
//                 fontSize: getFontSize(),
//                 color: AppTheme.colors['black']!.shade400,
//               ),
//               enabled: widget.isEnabled,
//               validator: widget.validator,
//               autovalidateMode: widget.autoValidateMode,
//               inputFormatters: widget.inputFormatters,
//             );
//           },
//         );
//       },
//     );
//   }

//   OutlineInputBorder border(Color color) {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(widget.borderRadius),
//       borderSide: BorderSide(
//         width: 1,
//         color: color,
//       ),
//     );
//   }

//   double getFontSize() {
//     switch (widget.size) {
//       case InputSize.extraSmall:
//         return AppTheme.extraSmall;
//       case InputSize.small:
//         return AppTheme.small;
//       case InputSize.large:
//         return AppTheme.large;
//       case InputSize.extraLarge:
//         return AppTheme.extraLarge;
//       default:
//         return AppTheme.medium;
//     }
//   }
// }
