import 'package:flutter/material.dart';
import 'package:bank_front/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  //gunannya tanda tanya kalo button bisa ada onpress bisa engga jadinya nullable

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    //jika width ga di atur maka akan mengikuti ukuran parent nya
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      //double infinity berguna untuk mengiki panjang dari sizebox
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  //gunannya tanda tanya kalo button bisa ada onpress bisa engga jadinya nullable

  const CustomTextButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    //jika width ga di atur maka akan mengikuti ukuran parent nya
    this.height = 24,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      //double infinity berguna untuk mengiki panjang dari sizebox
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          //padding agar terlihat sign nya
        ),
        child: Text(
          title,
          style: grayTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
