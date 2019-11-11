#priority -100

/*
	Crackpack 3 postInit Script

	This script is the main runner for the pack. This file should ONLY be
	modified if you know what you are doing. Changing anything in here could cause
	potential script failures and game breaking issues.
*/
import mods.zenstages.ZenStager;

// ==================================
// Initialize Scripts
initStaging();
initItemModifiers();
initRecipes();
initIntegration();

// ==================================
// Build the Stages
ZenStager.buildAll();

function initRecipes() {
	scripts.crafttweaker.recipes.hideCategory.init();
	scripts.crafttweaker.recipes.removeAndHide.init();

	// Mod Specific Recipes
	scripts.crafttweaker.recipes.mods.chancecubes.init();	
	scripts.crafttweaker.recipes.mods.dimstack.init();
	scripts.crafttweaker.recipes.mods.forestry.init();
	scripts.crafttweaker.recipes.mods.galacticraft.init();
	scripts.crafttweaker.recipes.mods.reliquary.init();
	scripts.crafttweaker.recipes.mods.thermalfoundation.init();
}

function initStaging() {
	scripts.crafttweaker.staging.mobs.init();
}

function initIntegration() {
	scripts.crafttweaker.modIntegrations.apotheosis.init();
	scripts.crafttweaker.modIntegrations.lootTableTweaker.init();
}

function initItemModifiers() {
	scripts.crafttweaker.itemModifiers.burnTime.init();
	scripts.crafttweaker.itemModifiers.hardness.init();
	scripts.crafttweaker.itemModifiers.hide.init();
	scripts.crafttweaker.itemModifiers.rename.init();
	scripts.crafttweaker.itemModifiers.tooltips.init();
}
