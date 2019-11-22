/*
	Crackpack 3 Item Descriptions Script
	This script allows for the addition of JEI Descriptions to ItemStacks.
	Note: These scripts are created and for the usage in Crackpack 3 and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.jei.JEI;

static descriptionPairs as string[][IItemStack] = {
	//Beneath Ores
	<thermalfoundation:ore:6>: [
		"Found in The Beneath Dimension",
		"Located between Y 5 and 125"
	],
	<thermalfoundation:ore:4>: [
		"Found in The Beneath Dimension",
		"Located between Y 40 and 75"
	],
	<thermalfoundation:ore:5>: [
		"Found in The Beneath Dimension",
		"Located between Y 5 and 90"
	],
	<galacticraftcore:basic_block_core:8>: [
		"Found in The Beneath Dimension",
		"Located between Y 75 and 200"
	],
	<aroma1997sdimension:miningore>: [
		"Found in The Beneath Dimension",
		"Located between Y 130 and 246"
	],
	//Nether Ores
	<rftools:dimensional_shard_ore:1>: [
		"Found in The Nether Dimension",
		"Located between Y 2 and 40"
	],
	//Erebus Ores
	<erebus:ore_jade>: [
		"Found in The Erebus Dimension"
	],
	<erebus:materials:1>: [
	  	"Found in The Erebus Dimension"
	],	
	<erebus:jade_block>: [
		"Found in The Erebus Dimension"
	]
};

function init() {
	for item, descriptionArray in descriptionPairs {
		JEI.addDescription(item, descriptionArray);
	}
}