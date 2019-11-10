/*
    Crackpack 3 Dimstack Recipe Script
    This script handles the recipes for Dimstack.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	//Keys to enter each dimension
	//Overworld to Beneath
	<dimstack:key>: [
		[
			[<astralsorcery:itemcraftingcomponent>, <enderio:item_material:71>, <minecraft:diamond_block>]
		]
	],
	//Beneath to Nether
	<dimstack:key:1>: [
		[
			[<enderio:item_alloy_ingot:3>, <galacticraftcore:basic_item:2>, <thermalfoundation:storage:6>]
		]
	],

	//Nether to Erebus
	<dimstack:key:2>: [
		[
			[<rftools:dimensional_shard>, <xreliquary:mob_ingredient:1>, <silentgear:crimson_steel_ingot>]
		],
		[
			[<twilightforest:naga_scale>, <twilightforest:ironwood_ingot>, <twilightforest:trophy:1>]
		]
	],

	//Erebus to End
	<dimstack:key:3>: [
		[
			[<erebus:materials:10>, <erebus:materials>, <erebus:jade_block>]
		],
		[
			[<thebetweenlands:life_crystal>, <thebetweenlands:sulfur_torch>, <thebetweenlands:octine_block>]
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
	<dimstack:key>,
	<dimstack:key:1>,
	<dimstack:key:2>,
	<dimstack:key:3>
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
