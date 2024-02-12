import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:flutter/material.dart';

class Screen_Sixteen extends StatelessWidget {
  const Screen_Sixteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Text('fdadfafafagagafdfadaadaf'),
          Image(
            image: AssetImage(
              'assets/icons/icon_1.png',
            ),
          ),
          Image(
            image: AssetImage(
              'assets/images/image_1.png',
            ),
          ),
          Image(
            image: NetworkImage(
                'https://fiverr-res.cloudinary.com/t_profile_thumb,q_auto,f_auto/attachments/profile/photo/8c45d8fce4874004f6d1fc773a34c750-1662120284709/129390b1-91dd-48cc-a076-9265f7a41c38.png'),
          ),
        ],
      ),
    );
  }
}
