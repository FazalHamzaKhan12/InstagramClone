import 'package:flutter/material.dart';

class UiHelper {
  /// Custom Text Field with consistent style
  static Widget customTextFeild({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 343,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: controller,
            obscureText: tohide,
            keyboardType: textinputtype,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xff121212),
              hintText: text,
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color(0xffFFFFFF),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                  color: Colors.grey.shade700,
                  width: 0.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                  color: Colors.grey.shade700,
                  width: 0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Custom Image with fallback for errors
  static Widget customImages({required String imgurl}) {
    return Image.asset(
      'assets/images/$imgurl',
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red); // Fallback widget
      },
    );
  }

  /// Custom Elevated Button
  static Widget CustomButton({
    required VoidCallback callback,
    required String buttonName,
  }) {
    return SizedBox(
      height: 43,
      width: 343,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF3797EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  /// Custom Text Button with style
  static Widget CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0XFF3797EF),
        ),
      ),
    );
  }

  /// Custom Container with optional image
  static Widget customContainer({
    required String mainText,
    String? yourimage,
    required double heghtCon,
    required double widthCon,
  }) {
    return Container(
      height: heghtCon,
      width: widthCon,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (yourimage != null)
            Image.asset(
              'assets/images/$yourimage',
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(); // Fallback to empty widget
              },
            ),
          if (yourimage != null) const SizedBox(width: 5), // Spacing for image
          Text(
            mainText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
