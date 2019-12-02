/*
    Crackpack 3 MrCrayfishFurniture Recipe Script
    This script handles the recipes for MrCrayfishFurniture.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<cfm:item_super_soap_water>: [
		[
			[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
			[<ore:ingotGold>, <cfm:item_soap_water>.noReturn(), <ore:ingotGold>],
			[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
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
	<cfm:item_soap_water>: [
		[<minecraft:water_bucket>.noReturn(), <cfm:item_soap>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<cfm:item_soap_water>,
	<cfm:item_super_soap_water>
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
