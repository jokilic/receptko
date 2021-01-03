# Extend API calls

## Recipes

### SearchRecipes - Some HardCore Search
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

# Read the Guides section in the API Docs

- [ ] Authentication
- [ ] Quotas
- [ ] Show images
- [ ] List of Ingredients
- [ ] Nutrition
- [ ] Diets
- [ ] Intolerances
- [ ] Cuisines
- [ ] Meal Types
- [ ] Recipe Sorting Options

## Authentication

* You have to put the `apiKey` in the Request URL for every Request.

## Quotas

* You have 150 points each day
* API call usually costs 1 point
* When daily quota is used, the API will respond with the error code `402`

## ...

# Things to potentially put in the ResultsScreen

* results
    * id
    * image
    * title
    * calories
    * carbs
    * fat
    * protein

# Things to potentially put in the RecipeScreen

* id
* title
* image
* readyInMinutes - Minutes needed to prepare
* spoonacularSourceUrl - Spoonacular link where the recipe is from (use URL Launcher for it)
* healthScore - Possibly. Not sure what's the top score
* spoonacularScore - Divide with 20 to get score within 5
* pricePerServing - Possibly multiply with 'servings'
* cheap - boolean. Maybe.
* vegan - boolean. Maybe.
* veryHealthy - boolean. Maybe.
* veryPopular - boolean. Maybe.
* extendedIngredients - List
    * image - get proper image link from documentation
    * original - text for ingredient
* summary - Full text explaining the recipe. Has HTML in it, probably needs to be stripped away



# To-do

## ResultsScreen

* Hero animation when moving from ResultsScreen to RecipeScreen
* index % 2 == 0 ? MyColors.backgroundColor : MyColors.bodyColor
* Title has more than 34 words? Add ellipsis
