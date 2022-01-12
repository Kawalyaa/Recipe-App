import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300.0,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18.0),
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (context, index) {
                    final ingredients = widget.recipe.ingredients[index];
                    // TODO: Add ingredient.quantity
                    return Text(
                        '${ingredients.quantity * _sliderVal} ${ingredients.measure} ${ingredients.name}');
                  }),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} serving',
              value: _sliderVal.toDouble(),
              onChanged: (newVal) {
                setState(() {
                  _sliderVal = newVal.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
            //TODO add Slider()
          ],
        ),
      ),
    );
  }
}
