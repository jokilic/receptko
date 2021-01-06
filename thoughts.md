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


## Authentication

* You have to put the `apiKey` in the Request URL for every Request.


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


## Intolerances

* Dairy
* Egg
* Gluten
* Grain
* Peanut
* Seafood
* Sesame
* Shellfish
* Soy
* Sulfite
* Tree Nut
* Wheat


## Cuisines

* African
* American
* British
* Cajun
* Caribbean
* Chinese
* Eastern European
* European
* French
* German
* Greek
* Indian
* Irish
* Italian
* Japanese
* Jewish
* Korean
* Latin American
* Mediterranean
* Mexican
* Middle Eastern
* Nordic
* Southern
* Spanish
* Thai
* Vietnamese


## Meal Types

* main course
* ide dish
* dessert
* appetizer
* salad
* bread
* breakfast
* soup
* beverage
* sauce
* marinade
* fingerfood
* snack
* drink


## Recipe Sorting Options

* Lots of sorting options
* Check them and decide how to proceed further
* https://spoonacular.com/food-api/docs#Recipe-Sorting-Options



# Things to potentially put in the ResultsScreen

* results
    * id
    * image
    * title
    * vegan
    * veryHealthy
    * cheap
    * veryPopular
    * readyInMinutes
    * spoonacularScore - Divide with 20 to get score within 5
    * pricePerServing
    * summary - Maybe a couple of words and an ellipsis


# Things to potentially put in the RecipeScreen

* id
* title
* image
* readyInMinutes - Minutes needed to prepare
* spoonacularSourceUrl - Spoonacular link where the recipe is from (use URL Launcher for it)
* sourceUrl - Original link where the recipe is from (use URL Launcher for it)
* healthScore - Possibly. Not sure what's the top score
* spoonacularScore - Divide with 20 to get score within 5
* pricePerServing
* cheap - boolean. Maybe.
* vegan - boolean. Maybe.
* veryHealthy - boolean. Maybe.
* veryPopular - boolean. Maybe.
* extendedIngredients - List
    * image - get proper image link from documentation
    * original - text for ingredient
* summary - Full text explaining the recipe



# To-do

## ResultsScreen

* Hero animation when moving from ResultsScreen to RecipeScreen
* index % 2 == 0 ? MyColors.backgroundColor : MyColors.bodyColor - maybe
* Title has more than 30 words? Add ellipsis
* SingleChildScrollViews to ListViews
* Clock icon should have a color depending on the length of time required to make a meal
* On HomePage create 'Couple of lunch ideas' and randomize for lunch
* Less letters in HomeScreenRecipe & add one more thing, maybe boolean icons
* If search results are 0, put some cool graphic
