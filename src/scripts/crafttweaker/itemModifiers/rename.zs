/*
	Crackpack 3 Item Renaming Script

	This script allows for the renaming of an item.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
};

function init() {
	for item, displayName in renameMap {
		item.displayName = displayName;
	}
}
