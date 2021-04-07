import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';

class SearchField extends StatelessWidget {
  SearchField({
    this.onTap,
    this.autofocus = false,
    this.enabled = true,
  });

  final void Function()? onTap;
  final bool autofocus;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final Color inputContentColor = Color.fromRGBO(202, 202, 202, 1);
    final OutlineInputBorder inputFieldBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    );

    final Widget input = Container(
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: inputContentColor,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: TextFormField(
              enabled: enabled,
              autofocus: autofocus,
              cursorColor: Color.fromRGBO(202, 202, 202, 1),
              decoration: InputDecoration(
                hintText: "Search plant",
                hintStyle: TextStyle(
                  color: inputContentColor,
                ),
                isDense: true,
                contentPadding: EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                ),
                focusedBorder: inputFieldBorder,
                disabledBorder: inputFieldBorder,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                filled: false,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Color.fromRGBO(226, 226, 226, 1),
          width: 1.5,
        ),
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 16,
        bottom: 16,
      ),
      margin: EdgeInsets.only(
        left: screenContentPadding,
        right: screenContentPadding,
      ),
    );

    if (onTap != null) {
      return Stack(
        children: [
          input,
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: onTap,
              child: Container(color: Colors.transparent),
            ),
          ),
        ],
      );
    }

    return input;
  }
}
