/*
	Crackpack 3 Furnace Recipes Script.
	This script is used to add or remove recipes to the furnace.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


var outputToRemove as IIngredient[] = [
];

for item in outputToRemove {
	furnace.remove(item);
}


var recipesToAdd as IIngredient[][IItemStack] = {
	<chococraft:pickled_gysahl_cooked>: [<chococraft:pickled_gysahl_raw>]
};

for output, inputs in recipesToAdd {
	for input in inputs {
		furnace.addRecipe(output, input);
	}
}