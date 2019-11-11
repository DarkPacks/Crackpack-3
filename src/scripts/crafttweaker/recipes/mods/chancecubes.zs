/*
    Crackpack 3 Chance Cubes Recipe Script
    This script handles the recipes for Chance Cubes.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<chancecubes:chance_cube>: [
		[
			[<thebetweenlands:items_misc:11> , <minecraft:dye:4>,<thebetweenlands:items_misc:11>],
			[<minecraft:dye:4> , <ore:blockDiamond>,<minecraft:dye:4>],
			[<thebetweenlands:items_misc:11> , <minecraft:dye:4>,<thebetweenlands:items_misc:11>]
		]
	],
	<chancecubes:chance_pendant_tier3>: [
		[
			[<ore:blockDiamond>, <ore:blockGold>,<ore:blockDiamond>],
			[<ore:blockGold>, <chancecubes:chance_pendant_tier2>,<ore:blockGold>],
			[<ore:blockDiamond>, <ore:blockGold>,<ore:blockDiamond>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<chancecubes:chance_cube>,
	<chancecubes:chance_pendant_tier3>
];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
