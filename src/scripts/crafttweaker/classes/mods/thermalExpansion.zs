#priority 3400

/*
	Crackpack 3 Thermal Expansion Class Script

	This script is a zenClass to allow easy interation with Thermal Expansion.
*/
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Coolant;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Enchanter;
import mods.thermalexpansion.Factorizer;
import mods.thermalexpansion.Imbuer;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Insolator;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.Sawmill;

zenClass ThermalExpansion {
	var default_imbuer_energy as int = 4800;
	var default_compactor_energy as int = 4000;
	var default_infuser_energy as int = 8000;
	var default_refinery_energy as int = 5000;

	zenConstructor() {
	}

	/*
		Imbuer
	*/
	function addImbuer(output as ILiquidStack, input as IItemStack, inputFluid as ILiquidStack) {
		Imbuer.addRecipe(output, input, inputFluid, default_imbuer_energy);
	}
	function addImbuer(output as ILiquidStack, input as IItemStack, inputFluid as ILiquidStack, energy as int) {
		Imbuer.addRecipe(output, input, inputFluid, energy);
	}

	function removeImbuer(input as IItemStack, inputFluid as ILiquidStack) {
		Imbuer.removeRecipe(input, inputFluid);
	}

	/*
		Enchanter
	*/
	function addEnchanter(output as IItemStack, input as IItemStack, secondInput as IItemStack, energy as int, experience as int, empowered as bool) {
		Enchanter.addRecipe(output, input, secondInput, energy, experience, empowered);
	}

	function removeEnchanter(input as IItemStack, secondInput as IItemStack) {
		Enchanter.removeRecipe(input, secondInput);
	}

	/*
		Centrifuge
	*/
	function addCentrifuge(outputs as WeightedItemStack[], input as IItemStack, fluid as ILiquidStack, energy as int) {
		Centrifuge.addRecipe(outputs, input, fluid, energy);
	}
	function addCentrifugeWithMob(entity as IEntityDefinition, outputs as WeightedItemStack[], energy as int, xp as int) {
		Centrifuge.addRecipeMob(entity, outputs, null, energy, xp);
	}
	function addCentrifugeWithMob(entity as IEntityDefinition, outputs as WeightedItemStack[], fluid as ILiquidStack, energy as int, xp as int) {
		Centrifuge.addRecipeMob(entity, outputs, fluid, energy, xp);
	}

	function removeCentrifuge(input as IItemStack) {
		Centrifuge.removeRecipe(input);
	}
	function removeCentrifugeWithMob(entity as IEntityDefinition) {
		Centrifuge.removeRecipeMob(entity);
	}

	/*
		Compactor Mint Recipes

		Type: mint, press, storage, or gear
	*/
	function addCompactor(_type as string, output as IItemStack, input as IItemStack) {
		var energy = default_compactor_energy;
		var type = _type.toLowerCase();

		if (type == "mint") {
			Compactor.addMintRecipe(output, input, energy);
		} else if (type == "press") {
			Compactor.addPressRecipe(output, input, energy);
		} else if (type == "storage") {
			Compactor.addStorageRecipe(output, input, energy);
		} else if (type == "gear") {
			Compactor.addGearRecipe(output, input, energy);
		} else {
			logger.logError("Attempted to add compactor recipe but no type was matched.");
		}
	}
	function addCompactor(_type as string, output as IItemStack, input as IItemStack, energy as int) {
		var type = _type.toLowerCase();
		if (type == "mint") {
			Compactor.addMintRecipe(output, input, energy);
		} else if (type == "press") {
			Compactor.addPressRecipe(output, input, energy);
		} else if (type == "storage") {
			Compactor.addStorageRecipe(output, input, energy);
		} else if (type == "gear") {
			Compactor.addGearRecipe(output, input, energy);
		} else {
			logger.logError("Attempted to add compactor recipe but no type was matched.");
		}
	}

	function removeCompactor(_type as string, input as IItemStack) {
		var type = _type.toLowerCase();
		if (type == "mint") {
			Compactor.removeMintRecipe(input);
		} else if (type == "press") {
			Compactor.removePressRecipe(input);
		} else if (type == "storage") {
			Compactor.removeStorageRecipe(input);
		} else if (type == "gear") {
			Compactor.removeGearRecipe(input);
		}
	}

	/*
		Coolant
	*/
	function addCoolant(fluid as ILiquidStack, coolantRf as int, coolantFactor as int) {
		Coolant.addCoolant(fluid, coolantRf, coolantFactor);
	}

	function removeCoolant(fluid as ILiquidStack) {
		Coolant.removeCoolant(fluid);
	}

	/*
		Energetic Infuser
	*/
	function addInfuser(output as IItemStack, input as IItemStack) {
		Infuser.addRecipe(output, input, default_infuser_energy);
	}
	function addInfuser(output as IItemStack, input as IItemStack, energy as int) {
		Infuser.addRecipe(output, input, energy);
	}

	function removeInfuser(input as IItemStack) {
		Infuser.removeRecipe(input);
	}

	/*
		Factorizer

		Recipe Types: split, combine, both

		Split / Combine: input, output
		Both: combined, split
	*/
	function addFactorizer(_recipeType as string, item1 as IItemStack, item2 as IItemStack) {
		var recipeType = _recipeType.toLowerCase();

		if (recipeType == "split") {
			Factorizer.addRecipeSplit(item1, item2);
		} else if (recipeType == "combine") {
			Factorizer.addRecipeCombine(item1, item2);
		} else if (recipeType == "both") {
			Factorizer.addRecipeBoth(item1, item2);
		} else {
			logger.logError("Attempted to add factorizer recipe but no recipe type was matched.");
		}
	}

	function removeFactorizer(_recipeType as string, input as IItemStack) {
		var recipeType = _recipeType.toLowerCase();

		if (recipeType == "split") {
			Factorizer.removeRecipeSplit(input);
		} else if (recipeType == "combine") {
			Factorizer.removeRecipeCombine(input);
		} else if (recipeType == "both") {
			Factorizer.removeRecipeCombine(input);
			Factorizer.removeRecipeSplit(input);
		} else {
			logger.logError("Attempted to remove factorizer recipe but no recipe type was matched.");
		}
	}

	/*
		Refinery
	*/
	function addRefinery(outputFluid as ILiquidStack, outputItem as IItemStack, input as ILiquidStack) {
		Refinery.addRecipe(outputFluid, outputItem, input, default_refinery_energy);
	}
	function addRefinery(outputFluid as ILiquidStack, outputItem as IItemStack, input as ILiquidStack, energy as int) {
		Refinery.addRecipe(outputFluid, outputItem, input, energy);
	}

	function removeRefinery(input as ILiquidStack) {
		Refinery.removeRecipe(input);
	}

	/*
		Induction Smelter
	*/
	function addInductionSmelter(primaryOutput as IItemStack, primaryInput as IItemStack, secondaryInput as IItemStack, energy as int) {
		InductionSmelter.addRecipe(primaryOutput, primaryInput, secondaryInput, energy);
	}
	function addInductionSmelter(primaryOutput as IItemStack, primaryInput as IItemStack, secondaryInput as IItemStack, energy as int, secondaryOutput as IItemStack, secondaryChance as int) {
		InductionSmelter.addRecipe(primaryOutput, primaryInput, secondaryInput, energy, secondaryOutput, secondaryChance);
	}

	function removeInductionSmelter(primaryInput as IItemStack, secondaryInput as IItemStack) {
		InductionSmelter.removeRecipe(primaryInput, secondaryInput);
	}

	/*
		Crucible
	*/
	function addCrucible(output as ILiquidStack, input as IItemStack, energy as int) {
		Crucible.addRecipe(output, input, energy);
	}

	function removeCrucible(input as IItemStack) {
		Crucible.removeRecipe(input);
	}

	/*
		Redstone Furnace
	*/
	function addRedstoneFurnace(output as IItemStack, input as IItemStack, energy as int) {
		RedstoneFurnace.addRecipe(output, input, energy);
	}
	function removeRedstoneFurnace(input as IItemStack) {
		RedstoneFurnace.removeRecipe(input);
	}

	/*
		Redstone Furnace - Augmented

		Note that the energy is multiplied by 1.5.
	*/
	function addAugmentedRedstoneFurnace(output as IItemStack, input as IItemStack, energy as int, creosoteAmount as int) {
		RedstoneFurnace.addPyrolysisRecipe(output, input, energy, creosoteAmount);
	}
	function removeAugmentedRedstoneFurnace(input as IItemStack) {
		RedstoneFurnace.removePyrolysisRecipe(input);
	}

	/*
		Insolator
	*/
	function addInsolator(primaryOutput as IItemStack, primaryInput as IItemStack, secondaryInput as IItemStack, energy as int) {
		Insolator.addRecipe(primaryOutput, primaryInput, secondaryInput, energy);
	}
	function addInsolator(primaryOutput as IItemStack, primaryInput as IItemStack, secondaryInput as IItemStack, energy as int, secondaryOutput as IItemStack, secondaryChance as int) {
		Insolator.addRecipe(primaryOutput, primaryInput, secondaryInput, energy, secondaryOutput, secondaryChance);
	}
	function removeInsolator(primaryInput as IItemStack, secondaryInput as IItemStack) {
		Insolator.removeRecipe(primaryInput, secondaryInput);
	}

	/*
		Pulverizer
	*/
	function addPulverizer(output as IItemStack, input as IItemStack, energy as int) {
		Pulverizer.addRecipe(output, input, energy);
	}
	function addPulverizer(output as IItemStack, input as IItemStack, energy as int, secondaryOutput as IItemStack, secondaryChance as int) {
		Pulverizer.addRecipe(output, input, energy, secondaryOutput, secondaryChance);
	}

	function removePulverizer(input as IItemStack) {
		Pulverizer.removeRecipe(input);
	}

	/*
		Sawmill
	*/
	function addSawmill(output as IItemStack, input as IItemStack, energy as int) {
		Sawmill.addRecipe(output, input, energy);
	}
	function addSawmill(output as IItemStack, input as IItemStack, energy as int, secondaryOutput as IItemStack, secondaryChance as int) {
		Sawmill.addRecipe(output, input, energy, secondaryOutput, secondaryChance);
	}

	function removeSawmill(input as IItemStack) {
		Sawmill.removeRecipe(input);
	}
}
