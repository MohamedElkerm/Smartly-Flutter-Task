import 'package:flutter/material.dart';
import 'package:store_app/core/utils/constants.dart';

Widget defaultFormField({
  //Validation is not correct
  //required Function validate,
  required controller,
  required label,
  prefix,
  enable,
  required type,
  suffix,
  suffixPressed,
  hint = '',
  onTap,
  onSubmit,
  onChange,
  isPassword = false,
}) =>
    Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          color:isDark ?Colors.white :Colors.white,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          border: Border.all(
            color:isDark ?Colors.black :Colors.white ,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: TextFormField(
          enabled: enable,
          cursorColor: Colors.grey,
          //Validation is not correct
          //validator:validate ,
          onFieldSubmitted: onSubmit,
          controller: controller,
          keyboardType: type,
          obscureText: isPassword,
          onChanged: onChange,
          onTap: onTap,
          decoration: InputDecoration(
            label: Text(
              label,
              style: TextStyle(color: Colors.grey),
            ),
            prefixIcon: Icon(
              prefix,
              color: Colors.grey,
            ),
            hintText: hint,
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                suffix,
                color: Colors.grey,
              ),
              onPressed: suffixPressed,
            ),
          ),
        ),
      ),
    );