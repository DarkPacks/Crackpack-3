/*
	Crackpack 3 Remove and Hide Script

	This script handles the removal and hiding of IIngredients.
*/
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

static removeAndHideIngredients as IIngredient[] = [
];

function init() {
	for ingredient in removeAndHideIngredients {
		JEI.removeAndHide(ingredient);
	}
}
