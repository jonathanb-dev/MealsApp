import 'package:flutter/material.dart';

// Widgets
import '../widgets/main-drawer.dart';

class FiltersPage extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegan = false;
  var _vegetarian = false;

  Widget buildSwitchListTile(String title, String subtitle, Function onChangedHandler) {
    return SwitchListTile(
      subtitle: Text(subtitle),
      title: Text(title),
      value: _glutenFree,
      onChanged: onChangedHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters')
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals',
                  (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  }
                ),
                buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals',
                  (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  }
                ),
                buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals',
                  (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  }
                ),
                buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals',
                  (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  }
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}