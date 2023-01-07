import 'package:flutter/material.dart';

import '../../constants/constraints.dart';
import '../../services/validator/validate_handeler.dart';

////////////////// textfiled//////////////////////////////////
class Gtextformfiled extends StatelessWidget {
  final String label;
  final TextInputType keybordtype;
  final TextEditingController controller;
  final String hintText;
  final IconData icon;

  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;
  const Gtextformfiled({
    this.hintText = "Text",
    this.icon = Icons.person,
    required this.onchange,
    required this.valid,
    required this.save,
    Key? key,
    required this.controller,
    this.label = "Textfiled",
    this.keybordtype = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: "sdsd",
      keyboardType: keybordtype,
      onChanged: onchange,
      onSaved: save,
      controller: controller,
      validator: valid,
      decoration: InputDecoration(
        icon: Icon(icon),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: kPrimaryColordark, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
        hintText: hintText,
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

////////////////// passwordfiled//////////////////////////////////
class Gpasswordformfiled extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextInputType textinput;
  final Function(String) onchange;
  final Function(String?) save;

  const Gpasswordformfiled({
    this.hintText = "Password",
    this.icon = Icons.person,
    required this.onchange,
    required this.save,
    this.textinput = TextInputType.text,
    Key? key,
  }) : super(key: key);

  @override
  _GpasswordformfiledState createState() => _GpasswordformfiledState();
}

class _GpasswordformfiledState extends State<Gpasswordformfiled> {
  bool isHidepassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidepassword,
      validator: (text) {
        return Validater.signupPassword(text!);
      },
      onChanged: widget.onchange,
      onSaved: widget.save,
      //initialValue: '',
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: kPrimaryColordark, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
        labelText: widget.hintText,
        // icon: Icon(widget.icon),
        suffixIcon:
            InkWell(onTap: _viewPassword, child: const Icon(Icons.visibility)),
        border: const OutlineInputBorder(),
      ),
    );
  }

  void _viewPassword() {
    if (isHidepassword == true) {
      isHidepassword = false;
    } else {
      isHidepassword = true;
    }
    setState(() {});
  }
}

///////////////////////////////np icon /////////////////////////////
///

class Gnoiconformfiled extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String hintText;
  final int maxlines;

  final TextInputType textinput;
  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;
  const Gnoiconformfiled({
    this.hintText = "Text",
    required this.onchange,
    required this.valid,
    required this.save,
    this.textinput = TextInputType.text,
    Key? key,
    required this.controller,
    this.label = "Textfiled",
    this.maxlines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: "sdsd",
      keyboardType: textinput,
      onChanged: onchange,
      maxLines: maxlines,
      onSaved: save,
      controller: controller,
      validator: valid,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: kPrimaryColordark, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
        hintText: hintText,
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
