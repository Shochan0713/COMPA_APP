import 'package:compa_app/view/conversation_content_creating_screen.dart';
import 'package:compa_app/view/setting_screen_change_seat.dart';
import 'package:compa_app/widget/back_ground_image_widget.dart';
import 'package:compa_app/widget/custom_elevated_button.dart';
import 'package:compa_app/widget/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundImage(
      child: Center(
        child: TransparentBorder(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 画面遷移がされない
            // contextらへんが怪しい気がする
            CustomElevatedButton(
                text: 'コミュニケーション',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const ConversionContentCreatingScreen()));
                }),
            CustomElevatedButton(
                text: '席替え',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingScreenChangeSeat()));
                })
          ],
        ))),
      ),
    ));
  }
}
