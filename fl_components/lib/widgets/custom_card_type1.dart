import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text("Soy un titulo"),
            leading: Icon(
              Icons.wifi_tethering,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                'Aliquip non reprehenderit cillum id ipsum. Magna qui dolore ea ut tempor aliqua qui ut labore. Sit ea eu elit laboris labore laboris cupidatat ut sint Lorem.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("cancel")),
                TextButton(onPressed: () {}, child: const Text("OK")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
