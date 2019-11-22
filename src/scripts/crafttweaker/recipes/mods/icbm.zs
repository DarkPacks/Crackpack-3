/*
    Crackpack 3 ICBM Recipe Script
    This script handles the recipes for ICBM.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<icbmclassic:launcherbase>: [
		[
			[<ore:plateBronze>, null, <ore:plateBronze>],
			[<ore:plateBronze>, <pneumaticcraft:printed_circuit_board>, <ore:plateBronze>],
			[<ore:plateBronze>, <ancientwarfarevehicle:spawner:16>, <ore:plateBronze>]
		]
	],
	<icbmclassic:launcherbase:1>: [
		[
			[<ore:plateSteel>, <thermalexpansion:augment:673>, <ore:plateSteel>],
			[<ore:plateSteel>, <ironjetpacks:diamond_capacitor>, <ore:plateSteel>],
			[<ore:plateSteel>, <icbmclassic:launcherbase>, <ore:plateSteel>]
		]
	],
	<icbmclassic:launcherbase:2>: [
		[
			[<galacticraftplanets:item_basic_mars:5> , <minecraft:skull:5>,<galacticraftplanets:item_basic_mars:5>],
			[<galacticraftplanets:item_basic_mars:5> , <enderio:item_material:55>,<galacticraftplanets:item_basic_mars:5>],
			[<galacticraftplanets:item_basic_mars:5> , <icbmclassic:launcherbase:1>,<galacticraftplanets:item_basic_mars:5>]
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
	<icbmclassic:launcherbase>,
	<icbmclassic:launcherbase:1>,
	<icbmclassic:launcherbase:2>
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
