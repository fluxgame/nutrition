# Nutrition

## Database Schema
* **Foods**
    * name
    * friendly_name
    * density
    * standard_unit_id
* **Nutrition Facts**
    * name
    * unit_id
* **Food Nutrition Facts**
    * nutrition_fact_id
    * food_id
    * quantity
* **Units**
    * name
    * abbreviation
    * liquid_or_solid
    * per_100 (all units are given per 100g or 100mL)
* **Recipes**
    * name
    * servings
* **Recipe Foods**
    * recipe_id
    * food_id
    * quantity
* **Food Log**
    * date/time
    * food_id
    * quantity
    