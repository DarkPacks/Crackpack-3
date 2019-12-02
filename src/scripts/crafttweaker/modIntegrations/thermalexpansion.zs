/*
	Crackpack 3 Thermal Expansion Script

	This script handles custom integration control to a mod.
*/

import mods.thermalexpansion.Compactor;

function init() {
mods.thermalexpansion.Compactor.addMintRecipe(<thermalfoundation:coin:64>, <ancientwarfarenpc:coin>.withTag({metal: "copper"}) * 5, 2500);
mods.thermalexpansion.Compactor.addMintRecipe(<thermalfoundation:coin:66>, <ancientwarfarenpc:coin>.withTag({metal: "silver"}) * 5, 2500);
mods.thermalexpansion.Compactor.addMintRecipe(<thermalfoundation:coin:1>, <ancientwarfarenpc:coin>.withTag({metal: "gold"}) * 5, 2500);
}