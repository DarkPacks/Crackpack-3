/*
	Crackpack 3 Hide Category Script

	This script handles the hiding of Recipe Categories in JEI.
*/
import mods.jei.JEI;

static hiddenCategoryNames as string[] = [
];

function init() {
	for categoryName in hiddenCategoryNames {
		JEI.hideCategory(categoryName);
	}
}
