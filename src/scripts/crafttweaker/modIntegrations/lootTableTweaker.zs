/*
	Crackpack 3 Loot Tweaker Craft Script

	This script handles custom integration control to a mod.
*/
import mods.ltt.LootTable;

/*
	Support:

	Loot Table Tweaker: http://crafttweaker.readthedocs.io/en/latest/#Mods/LootTableTweaker/LootTableTweaker/
*/
function init() {
	// Loot Tables
	var tablesToRemove as string[] = [
	];

	for table in tablesToRemove {
		LootTable.removeTable(table);
	}

	// Global Items Removal
	var globalItemsToRemove as string[] = [
		"minecraft:wheat",
		"minecraft:coal",
		"minecraft:bone",
		"minecraft:rotten_flesh",
		"minecraft:gold_ingot",
		"minecraft:redstone",
		"minecraft:iron_ingot"

	];

	for globalItem in globalItemsToRemove {
		LootTable.removeGlobalItem(globalItem);
	}

	// Single Entry Removals
	// LootTable.removeEntry("minecraft:chests/simple_dungeon", "main", "minecraft:iron_horse_armor");
}
