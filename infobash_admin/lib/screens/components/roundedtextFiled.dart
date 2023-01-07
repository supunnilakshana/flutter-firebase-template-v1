import 'package:flutter/material.dart';

import 'Textfiledcontainer.dart';

class RoundedInput extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextInputType textinput;
  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;

  const RoundedInput({
    Key? key,
    this.hintText = "Your Email",
    this.icon = Icons.person,
    required this.onchange,
    required this.valid,
    required this.save,
    this.textinput = TextInputType.text,

    //this.onChange?,
  }) : super(key: key);

  @override
  _RoundedInputState createState() => _RoundedInputState();
}

class _RoundedInputState extends State<RoundedInput> {
  @override
  Widget build(BuildContext context) {
    return Textfiledcontainer(
      child: TextFormField(
        // onChanged: onChange,
        onChanged: widget.onchange,
        onSaved: widget.save,
        validator: widget.valid,
        keyboardType: widget.textinput,
        decoration: InputDecoration(
            //  icon: Icon(widget.icon, color: kprimaryColor),
            hintText: widget.hintText,
            border: InputBorder.none),
      ),
    );
  }
}

class RoundedInputWithControll extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextInputType textinput;
  final bool isenabel;
  final TextEditingController controller;
  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;

  const RoundedInputWithControll({
    Key? key,
    this.hintText = "Type your text . . .",
    this.icon = Icons.person,
    required this.onchange,
    required this.valid,
    required this.save,
    this.textinput = TextInputType.text,
    this.isenabel = true,
    required this.controller,

    //this.onChange?,
  }) : super(key: key);

  @override
  _RoundedInputWithControllState createState() =>
      _RoundedInputWithControllState();
}

class _RoundedInputWithControllState extends State<RoundedInputWithControll> {
  @override
  Widget build(BuildContext context) {
    return Textfiledcontainer(
      child: TextFormField(
        maxLength: null,
        maxLines: null,
        enabled: widget.isenabel,
        controller: widget.controller,
        // onChanged: onChange,
        onChanged: widget.onchange,
        onSaved: widget.save,
        validator: widget.valid,
        keyboardType: widget.textinput,
        style: TextStyle(color: Colors.black.withOpacity(0.9)),
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
            icon: Icon(widget.icon, color: Colors.black.withOpacity(0.9)),
            hintText: widget.hintText,
            border: InputBorder.none),
      ),
    );
  }
}
