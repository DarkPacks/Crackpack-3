/*
	Crackpack 3 Hide Script

	This script handles the removal and hiding of IItemStacks.
*/
import crafttweaker.item.IItemStack;

import mods.jei.JEI;

static hiddenIngredients as IItemStack[] = [
];

function init() {
	for ingredient in hiddenIngredients {
		JEI.hide(ingredient);
	}
}
