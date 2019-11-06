/*
	Crackpack 3 Remove and Hide Script

	This script handles the removal and hiding of IIngredients.
*/
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

static removeAndHideIngredients as IIngredient[] = [
	<icbmclassic:explosives:19>,
	<icbmclassic:explosives:22>,
	<icbmclassic:explosives:23>,
	<icbmclassic:explosives:29>,
	<icbmclassic:explosives:30>,
	<icbmclassic:grenade:29>,
	<icbmclassic:grenade:30>,
	<icbmclassic:missile:19>,
	<icbmclassic:missile:20>,
	<icbmclassic:missile:22>,
	<icbmclassic:missile:23>,
	<icbmclassic:missile:29>,
	<icbmclassic:missile:30>
];

function init() {
	for ingredient in removeAndHideIngredients {
		JEI.removeAndHide(ingredient);
	}
}
