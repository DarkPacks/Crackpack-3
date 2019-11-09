/*
	Crackpack 3 Item Renaming Script

	This script allows for the renaming of an item.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
	<harvestcraft:bubblywateritem>: "Wig Water",
	<thermalfoundation:wrench>: "Crescent Hammer (Wrench)"
};

function init() {
	for item, displayName in renameMap {
		item.displayName = displayName;
	}
}
