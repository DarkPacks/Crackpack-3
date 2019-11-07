/*
    Crackpack 3 Forestry Recipe Script
    This script handles the recipes for Forestry.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	//NOT THE BEEEEEEEES!
	<forestry:apiarist_helmet>: [
		[
			[<harvestcraft:waxcombitem>, <harvestcraft:wovencottonitem>, <harvestcraft:waxcombitem>],
			[<harvestcraft:waxcombitem>, null, <harvestcraft:waxcombitem>]
		]
	],
	<forestry:apiarist_chest>: [
		[
			[<harvestcraft:waxcombitem>, null, <harvestcraft:waxcombitem>],
			[<harvestcraft:waxcombitem>, <harvestcraft:wovencottonitem>, <harvestcraft:waxcombitem>],
			[<harvestcraft:waxcombitem>, <harvestcraft:beeswaxitem>, <harvestcraft:waxcombitem>]
		]
	],
	<forestry:apiarist_legs>: [
		[
			[<harvestcraft:beeswaxitem>, <harvestcraft:wovencottonitem>, <harvestcraft:beeswaxitem>],
			[<harvestcraft:waxcombitem>, null, <harvestcraft:waxcombitem>],
			[<harvestcraft:waxcombitem>, null, <harvestcraft:waxcombitem>]
		]
	],
	<forestry:apiarist_boots>: [
		[
			[<harvestcraft:beeswaxitem>, null, <harvestcraft:beeswaxitem>],
			[<harvestcraft:waxcombitem>, null, <harvestcraft:waxcombitem>]
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
	<forestry:apiarist_helmet>,
	<forestry:apiarist_chest>,
	<forestry:apiarist_legs>,
	<forestry:apiarist_boots>
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