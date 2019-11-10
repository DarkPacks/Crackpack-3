#priority 3400

/*
	Crackpack 3 Alchemistry Class Script

	This script is a zenClass to allow easy interation with Alchemistry.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.alchemistry.Util;
import mods.alchemistry.Evaporator;
import mods.alchemistry.Atomizer;
import mods.alchemistry.Liquifier;
import mods.alchemistry.Combiner;
import mods.alchemistry.Electrolyzer;
import mods.alchemistry.Dissolver;

zenClass Alchemistry {
	zenConstructor() {
	}

	/*
		Getters

		Utility methods to get a compound or string. This is preferred over using the IItemStack
		as this is more legible in code.
	*/
	function getComopund(name as string) as IItemStack {
		return Util.get(name);
	}
	function getElement(name as string) as IItemStack {
		return Util.get(name);
	}

	/*
		Evaporator
	*/
	function addEvaporator(output as IItemStack, input as ILiquidStack) {
		Evaporator.addRecipe(output, input);
	}

	function removeEvaporator(input as ILiquidStack) {
		Evaporator.removeRecipe(input);
	}
	function removeEvaporatorAll() {
		Evaporator.removeAllRecipes();
	}

	/*
		Atomizer
	*/
	function addAtomizer(output as IItemStack, input as ILiquidStack) {
		Atomizer.addRecipe(output, input);
	}

	function removeAtomizer(input as ILiquidStack) {
		Atomizer.removeRecipe(input);
	}
	function removeAtomizerAll() {
		Atomizer.removeAllRecipes();
	}

	/*
		Liquifier
	*/
	function addLiquifier(output as ILiquidStack, input as IItemStack) {
		Liquifier.addRecipe(output, input);
	}

	function removeLiquifier(input as IItemStack) {
		Liquifier.removeRecipe(input);
	}
	function removeLiquifierAll() {
		Liquifier.removeAllRecipes();
	}

	/*
		Chemical Combiner
	*/
	function addCombiner(output as IItemStack, inputs as IItemStack[]) {
		Combiner.addRecipe(output, inputs);
	}

	function removeCombiner(output as IItemStack) {
		Combiner.removeRecipe(output);
	}
	function removeCombinerAll() {
		Combiner.removeAllRecipes();
	}

	function addCombinerStaged() {
		// TODO
		logger.logError("Alchemistry.addCombinerStaged is not yet implemented");
		//Combiner.addStagedRecipe(IItemStack output, IItemStack[] input, String stage);
	}

	function setCombinerStaged() {
		// TODO
		logger.logError("Alchemistry.setCombinerStaged is not yet implemented");
		//Combiner.setAsStaged(IItemStack output, String stage
	}

	/*
		Electrolyzer
	*/
	function addElectrolyzer(input as ILiquidStack, electrolyte as IItemStack, electrolyteConsumptionChance as int, output1 as IItemStack, output2 as IItemStack) {
		Electrolyzer.addRecipe(input, electrolyte, electrolyteConsumptionChance, output1, output2, null, null, null, null);
	}
	function addElectrolyzer(input as ILiquidStack, electrolyte as IItemStack, electrolyteConsumptionChance as int, output1 as IItemStack, output2 as IItemStack,
		output3 as IItemStack, output3Chance as int) {
			Electrolyzer.addRecipe(input, electrolyte, electrolyteConsumptionChance, output1, output2, output3, output3Chance, null, null);
	}
	function addElectrolyzer(input as ILiquidStack, electrolyte as IItemStack, electrolyteConsumptionChance as int, output1 as IItemStack, output2 as IItemStack,
		output3 as IItemStack, output3Chance as int, output4 as IItemStack, output4Chance as int) {
			Electrolyzer.addRecipe(input, electrolyte, electrolyteConsumptionChance, output1, output2, output3, output3Chance, output4, output4Chance);
	}

	function removeElectrolyzer(input as ILiquidStack, electrolyte as IItemStack) {
		Electrolyzer.removeRecipe(input, electrolyte);
	}
	function removeElectrolyzerAll() {
		Electrolyzer.removeAllRecipes();
	}

	/*
		Dissolver

		`/dissolver` that will fetch the crafttweaker recipe for the item that you are holding and copy it into your clipboard

		If relative probability is true, then each probability will be calculated based on the sum of all of the probabilities.

		If relative probability is false, then these numbers are absolute percentages i.e. a 10% chance of outputting stone and a 20% chance of
		outputting sand and iron ore (regardless of whether or not stone was outputted). Floating-point probabilities are supported, so 4.5 would mean 4.5%
	*/

	// TODO: Object cant be used
	/*function addDissolver(input as IIngredient, relativeProbability as bool, rolls as int, probabilityGroups as Object[][]) {
		Dissolver.addRecipe(input, relativeProbability, rolls, probabilityGroups);
	}*/

	function removeDissolver(input as IIngredient) {
		Dissolver.removeRecipe(input);
	}
	function removeDissolverAll() {
		Dissolver.removeAllRecipes();
	}
}
