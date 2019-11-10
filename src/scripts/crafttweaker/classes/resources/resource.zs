#priority 3000

/*
	SkyFactory 4 Resource Class Script

	This script is a zenClass to store information and methods for a resource.

	handle methods handle recipes where the given part is the input of the recipe
*/
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.Stage;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.utils;

zenClass Resource {
	var resourceName as string;
	var parts as IItemStack[string] = {};
	var partsOredict as IOreDictEntry[string] = {};
	var liquid as ILiquidStack;
	var stage as Stage;

	zenConstructor(resourceName as string) {
		this.resourceName = resourceName;
	}

	function addPart(partName as string, partItem as IItemStack, partOredict as IOreDictEntry) {
		if (!isNull(parts[partName])) {
			logger.logError("Attempted to add " ~ partName
				~ " to Resource '" ~ resourceName ~ "' but it already exists");
			return null;
		}

		parts[partName] = partItem;
		partsOredict[partName] = partOredict;
	}

	function setLiquid(liquid as ILiquidStack) {
		if (!isNull(this.liquid)) {
			logger.logError("Attempted to add liquid to Resource '"
				~ resourceName ~ "' but it already exists");
			return null;
		}

		this.liquid = liquid;
	}

	function hasPart(partName as string) as bool {
		return (this.parts has partName) & !isNull(this.parts[partName]);
	}

	function hasLiquid() as bool {
		return !isNull(this.liquid);
	}

	function init() {
		// ==============================
		// Stage the Liquid
		if (!isNull(this.stage) & hasLiquid()) {
			this.stage.addLiquid(this.liquid);
			this.stage.addIngredient(craftingUtils.getBucketIngredient(this.liquid));
		}

		// ==============================
		// Loop over the parts for the Metal and handle each part for correcting/changing processing recipes/mechanics.
		for partName, part in this.parts {
			if (!isNull(part)) {
				if (partName == "ore") {
					var oreOreDict as IOreDictEntry = utils.getResourcePartOreDict(partName, this.resourceName);

					if (!isNull(this.stage)) {
						this.stage.addIngredient(oreOreDict);
					}

					handleOre(oreOreDict);
				} else {
					// Stage the part.
					if (!isNull(this.stage)) {
						this.stage.addIngredient(part);
					}
				}
			}
		}

		handleDirtyDust();
		handleDust();
		handleIngot();
		handleNugget();
		handlePlate();
		handleBlock();
		handleRod();
		handleCrystal();
		handleShard();
		handleClump();
		handleLiquid();

		createConversionRecipes();
	}

	function handleDirtyDust() {
		if (!hasPart("dustDirty")) {
			return null;
		}

		if (hasPart("dust")) {
		}
	}

	function handleDust() {
		if (!hasPart("dust")) {
			return null;
		}

		if (hasPart("ingot")) {
			furnace.addRecipe(this.parts.ingot, this.parts.dust);
		}

		if (hasLiquid()) {
		}
	}

	function handleIngot() {
		if (!hasPart("ingot")) {
			return null;
		}

		if (hasPart("block")) {
			recipes.addShaped(this.parts.block, craftingUtils.create3By3(this.parts.ingot));
		}

		if (hasPart("dust")) {
		}

		if (hasPart("nugget")) {
			recipes.addShapeless(this.parts.nugget * 9, [this.parts.ingot]);
		}

		if (hasPart("plate")) {
		}

		if (hasLiquid()) {
		}

		if (hasPart("gear")) {
			recipes.addShaped(this.parts.gear, [
				[null, this.parts.ingot, null],
				[this.parts.ingot, null, this.parts.ingot],
				[null, this.parts.ingot, null]
			]);
		}
	}

	function handleNugget() {
		if (!hasPart("nugget")) {
			return null;
		}

		if (hasPart("ingot")) {
			recipes.addShaped(this.parts.ingot, craftingUtils.create3By3(this.parts.nugget));
		}

		if (hasLiquid()) {
		}
	}

	function handlePlate() {
		if (!hasPart("plate")) {
			return null;
		}

		if (hasLiquid()) {
		}
	}

	function handleBlock() {
		if (!hasPart("block")) {
			return null;
		}

		if (hasPart("ingot")) {
			recipes.addShapeless(this.parts.ingot * 9, [this.parts.block]);
		}

		if (hasLiquid()) {
		}
	}

	function handleRod() {
		if (!hasPart("rod")) {
			return null;
		}
	}

	function handleOre(oreOreDict as IOreDictEntry) {
		if (!hasPart("ore")) {
			return null;
		}

		if (hasPart("ingot")) {
			furnace.addRecipe(this.parts.ingot, oreOreDict);
		}

		if (hasLiquid()) {
		}

		for ore in oreOreDict.items {
			if (hasPart("dust")) {
			}

			if (hasPart("clump")) {
			}

			if (hasPart("shard")) {
			}
		}
	}

	function handleCrystal() {
		if (!hasPart("crystal")) {
			return null;
		}

		if (hasPart("clump")) {
		}
	}

	function handleShard() {
		if (!hasPart("shard")) {
			return null;
		}

		if (hasPart("clump")) {
		}
	}

	function handleClump() {
		if (!hasPart("clump")) {
			return null;
		}

		if (hasPart("dustDirty")) {
		}
	}

	function handleGear() {
		if (!hasPart("gear")) {
			return null;
		}

		if (hasLiquid()) {
		}
	}

	function handleLiquid() {
		if (!hasLiquid()) {
			return null;
		}

		if (hasPart("ingot")) {
		}
	}

	/*
		This adds the processing such as Ingot -> Dust or other conversions needed for the Ore outputs which are removed
		in process with cleaning up via the `removeRecipes` Function.
	*/
	function createConversionRecipes() {
		// Handle the Ingot -> Dust conversion.
		if (hasPart("ingot") & hasPart("dust")) {
		}
	}
}
