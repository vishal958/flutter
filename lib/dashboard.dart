import 'package:flutter/material.dart';

import 'cardwidget.dart';
import 'components/appbar.dart';
import 'config/colors.dart';
import 'config/size.dart';
import 'expenseswidget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);

    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: Column(
          children: <Widget>[
            Container(
              height: height / 8,
              child: CustomAppBar(),
            ),
            Expanded(
              child: CardWidget(),
            ),
            Expanded(child: Text('data')),
          ],
        ),
      ),
    );
  }
}
