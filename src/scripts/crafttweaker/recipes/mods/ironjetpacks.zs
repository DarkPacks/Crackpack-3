/*
    Crackpack 3 Iron Jetpacks Recipe Script
    This script handles the recipes for Iron Jetpacks.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	//DiaMON Capacitor Recipe
	<ironjetpacks:diamond_capacitor>: [
		[
			[<alchemistry:ingot:56>, <ironjetpacks:diamond_cell>, <alchemistry:ingot:56>],
			[<silentgear:crimson_steel_ingot>, <ironjetpacks:diamond_cell>, <silentgear:crimson_steel_ingot>],
			[<alchemistry:ingot:56>, <ironjetpacks:diamond_cell>, <alchemistry:ingot:56>]
		]
	],
	//Platinom Capacitor Recipe
	<ironjetpacks:platinum_capacitor>: [
		[
			[<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}), <ironjetpacks:platinum_cell>, <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000})],
			[<alchemistry:ingot:32>, <ironjetpacks:platinum_cell>, <alchemistry:ingot:32>],
			[<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}), <ironjetpacks:platinum_cell>, <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000})]
		]
	],
	//EMERIL Capacitor Recipe BAM!
	<ironjetpacks:emerald_capacitor>: [
		[
			[<erebus:materials:15>, <ironjetpacks:emerald_cell>, <erebus:materials:15>],
			[<botania:manaresource:4>, <ironjetpacks:emerald_cell>, <botania:manaresource:4>],
			[<erebus:materials:15>, <ironjetpacks:emerald_cell>, <erebus:materials:15>]
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
	<ironjetpacks:diamond_capacitor>,
	<ironjetpacks:platinum_capacitor>,
	<ironjetpacks:emerald_cell>
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
