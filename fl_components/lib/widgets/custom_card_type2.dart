import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
// propiedades
  final String imgUrl;
  final String? name;

  const CustomCardType2({super.key, required this.imgUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 100,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imgUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 100),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
