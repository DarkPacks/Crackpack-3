#priority 2348

/*
	Crackpack 3 OreDict Unification Script.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.crafttweaker.classes.resources.resource.Resource;
import scripts.crafttweaker.utils;

static resourcesToClear as string[] = [
	"iridium",
	"mithril"
];

function init() {
	// TODO: Unify should be done in #2550-2599 currently (according to README.md)
	for resourceName, resource in resources {
		var clearResource = (resourcesToClear has resourceName);

		for partName, partItem in resource.parts {
			var hideRemoved = true;
			var removePreferredItemRecipes = false;
			var cleanOreDict = true;
			var preferredItem = partItem;

			if (partName == "ore") {
				cleanOreDict = false;
				hideRemoved = false;
			}

			if (clearResource) {
				preferredItem = null;
				cleanOreDict = true;
				hideRemoved = true;
			}

			unifier.unify(resource.partsOredict[partName], preferredItem, resource.liquid, hideRemoved, removePreferredItemRecipes, cleanOreDict);
		}
	}

	// After oredicts are unified, initialize resource recipes & other dependants
	for resourceName, resource in resources {
		resource.init();
	}
}

/*
	Secondary Output mapping for Ores.
*/
static secondaryOutputs as IOreDictEntry[string] = {
};
