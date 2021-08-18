import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/colors.dart';
import 'package:flutter_application_1/config/size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width / 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Text(
              'Vishal Maurya',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
            Container(
              width: width / 7,
              height: width / 7,
              decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  boxShadow: AppColors.neumorpShadow,
                  shape: BoxShape.circle),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        boxShadow: AppColors.neumorpShadow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(Icons.notifications),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
