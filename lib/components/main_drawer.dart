import 'package:flutter/material.dart';
import 'package:meals_app/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          label,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: onTap);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              "Let's Cook!!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            height: 120,
            alignment: Alignment.bottomRight,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: 20),
          _createItem(
            Icons.restaurant,
            'Meals',
            () => Navigator.of(context).pushReplacementNamed(
              AppRoutes.HOME,
            ),
          ),
          _createItem(
            Icons.settings,
            'Settings',
            () => Navigator.of(context).pushReplacementNamed(
              AppRoutes.SETTINGS,
            ),
          )
        ],
      ),
    );
  }
}
