import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/register_screen/controller/register_controller.dart';


class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    Key? key,
    required RegisterController controller,
  }) : _controller = controller, super(key: key);

  final RegisterController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
              value: 'ذكر',
              groupValue:_controller.genderSelected.value,
              onChanged: (String? v){
                _controller.isTappedFunc(v);
              }
          ),
          const Text('ذكر', style:   TextStyle(fontSize: 16.0),),
          Radio(
               value: 'انثي',
              groupValue:_controller.genderSelected.value,
              onChanged: (String? v){
                _controller.isTappedFunc(v);
              }
          ),
          const Text(
            'انثي',
            style:   TextStyle(
              fontSize: 16.0,
            ),
          ),
        ]);
  }
}
