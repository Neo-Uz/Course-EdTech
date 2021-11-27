import 'package:course/components/importing_packages.dart';
import 'package:flutter/material.dart';

class TextFieldMark extends StatelessWidget {
  VoidCallback onPressed;
  String hintText;
  TextFieldMark({
    required this.onPressed,
    required this.hintText,
    Key? key}) : super(key: key);

  final TextEditingController _textController = TextEditingController();
  final _key = GlobalKey<FormFieldState>();
  String? _searchText;

  @override
  Widget build(BuildContext context) {
    return TextField(
              controller: _textController,
              onChanged: (v) => _searchText =v,
              cursorHeight: getUniqueHeight(21),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: _searchFunction,
                  icon: SvgPicture.asset(IconPath.search,
                      fit: BoxFit.none, height: 20),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: getUniqueWidth(14.0),
                  fontWeight: FontWeight.w400,
                  color: ConstColor.kDarkGrey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ConstColor.kGreyBE,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ConstColor.kGreyBE,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                constraints: const BoxConstraints(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getUniqueWidth(16.0),
                  vertical: getUniqueHeight(17.5),
                ),
              ),
            );
  }

   _searchFunction() {
    if(_textController.text.isNotEmpty){
      _textController.clear();
      print("Search: _searchText  XXX");
    }
  }
}