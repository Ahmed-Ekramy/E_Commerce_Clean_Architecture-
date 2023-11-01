import 'package:flutter/material.dart';

import '../../../../../config/routes.dart';
import '../../../../../core/utils/cache_helper.dart';

class ProfTab extends StatelessWidget {
  const ProfTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                CacheHelper.removeData("User");
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.login, (route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
