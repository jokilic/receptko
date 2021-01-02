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
