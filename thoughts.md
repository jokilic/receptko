# Extend API calls

### SearchRecipes - Some Hardcore Search
- [ ] cuisine - comma separated
- [ ] excludeCuisine - comma separated
- [ ] diet - e.g. vegan
- [ ] intolerances - comma separated (e.g. gluten)
- [ ] equipment - comma separated (e.g. pan)
- [ ] includeIngredients - comma separated (e.g. tomato)
- [ ] excludeIngredients - comma separated (e.g. cheese)
- [ ] type - e.g. main course
- [ ] maxReadyTime - time in minutes (int)
- [ ] sort - sorting strategy (String)

### SearchRecipesByIngredients
- [ ] ingredients - comma separated

### QuickAnswer
- [ ] Add this API call


# Guides

## Quotas

* You have 150 points each day
* API call usually costs 1 point
* When daily quota is used, the API will respond with the error code `402`


## Show Images

### Ingredients

* Build the full URL by adding 'https://spoonacular.com/cdn/ingredients_100x100/' to the fetched image String

### Cooking Equipment

* Build the full URL by adding 'https://spoonacular.com/cdn/ingredients_100x100/' to the fetched image String

### Recipes

* URL should already be full built when fetched

### Grocery Products

* URL should already be full built when fetched

### Menu Items

* URL should already be full built when fetched


## Diet

* Check this section and add relevant info where applicable.
* https://spoonacular.com/food-api/docs#Diets


## Recipe Sorting Options

* Lots of sorting options
* Check them and decide how to proceed further
* https://spoonacular.com/food-api/docs#Recipe-Sorting-Options

# To-do

## ResultsScreen

* SingleChildScrollViews to ListViews
* On HomePage create 'Couple of lunch ideas' and randomize for lunch
* 'Some meals from $cuisine' and 6 meals
* Cuisine meals - Some return spaces (e.g. 'latin american')
