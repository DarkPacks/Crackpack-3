/*
    Crackpack 3 Galacticraft Recipe Script
    This script handles the recipes for Galacticraft.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	//Moon Buggy
	<galacticraftcore:schematic>: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <galacticraftcore:buggymat>, <minecraft:paper>],
			[null, <minecraft:paper>, null]
		]
	],
	//Tier 2 Rocket
	<galacticraftcore:schematic:1>: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <galacticraftcore:cheese_curd>, <minecraft:paper>],
			[null, <minecraft:paper>, null]
		]
	],
	//tier 3 rocket
	<galacticraftplanets:schematic>: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <galacticraftplanets:item_basic_mars:2>, <minecraft:paper>],
			[null, <minecraft:paper>, null]
		]
	],
	//Cargo Rocket
	<galacticraftplanets:schematic:1>: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <galacticraftplanets:mars:9>, <minecraft:paper>],
			[null, <minecraft:paper>, null]
		]
	],
	//Astrominer
	<galacticraftplanets:schematic:2>: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <galacticraftplanets:basic_item_venus:4>, <minecraft:paper>],
			[null, <minecraft:paper>, null]
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