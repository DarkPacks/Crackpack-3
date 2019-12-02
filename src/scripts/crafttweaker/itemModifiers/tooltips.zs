/*
	Crackpack 3 Tooltips Modification Script

	This script allows modification of tooltips.
*/
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

static itemTooltipMap as IFormattedText[][IItemStack] = {
	/*
		QoL pipe tooltips
	*/
	// Item Pipes
	<thermaldynamics:duct_32:3>: [
		format.red("Usage: Item Transfer Pipe")
	],
	<thermaldynamics:duct_32:2>: [
		format.red("Usage: Item Transfer Pipe")
	],
	<thermaldynamics:duct_32:1>: [
		format.red("Usage: Item Transfer Pipe")
	],
	<thermaldynamics:duct_32>: [
		format.red("Usage: Item Transfer Pipe")
	],
	<enderio:item_item_conduit>: [
		format.red("Usage: Item Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_32:5>: [
		format.red("Usage: Item Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_32:6>: [
		format.red("Usage: Item Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_32:7>: [
		format.red("Usage: Item Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_32:4>: [
		format.red("Usage: Item Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],


	// Fluid pipes
	<thermaldynamics:duct_16:1>: [
		format.red("Usage: Fluid Transfer Pipe")
	],
	<thermaldynamics:duct_16>: [
		format.red("Usage: Fluid Transfer Pipe")
	],
	<thermaldynamics:duct_16:7>: [
		format.red("Usage: Fluid Transfer Pipe")
	],
	<thermaldynamics:duct_16:6>: [
		format.red("Usage: Fluid Transfer Pipe")
	],
	<thermaldynamics:duct_16:5>: [
		format.red("Usage: Fluid Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_16:4>: [
		format.red("Usage: Fluid Transfer Pipe"),
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_16:3>: [
		format.red("Usage: Fluid Transfer Pipe")
	],
	<thermaldynamics:duct_16:2>: [
		format.red("Usage: Fluid Transfer Pipe")
	],
	<enderio:item_liquid_conduit>: [
			format.red("Usage: Fluid Transfer Pipe")
	],
	<enderio:item_liquid_conduit:1>: [
			format.red("Usage: Fluid Transfer Pipe")
	],
	<enderio:item_liquid_conduit:2>: [
			format.red("Usage: Fluid Transfer Pipe")
	],

	// Power pipes
	<thermaldynamics:duct_0:4>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_0:3>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_0:2>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_0:1>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_0>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_0:5>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<thermaldynamics:duct_0:5>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<enderio:item_power_conduit>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<enderio:item_power_conduit:1>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],
	<enderio:item_power_conduit:2>: [
		format.red("Usage: Power / Energy Transfer Pipe")
	],

	//Misc Pipes
	<enderio:item_redstone_conduit>: [
		format.red("Usage: Redstone Pipe")
	],
	<enderio:item_refined_storage_conduit>: [
		format.red("Usage: Refined Storage Pipe")
	],

	<dimstack:key>: [
		format.red("Key to The Beneath Dimension"),
		format.red("Right-Click on Bedrock to open a Portal"),
		format.red("From the bottom of The Overworld Dimension")
	],
	<dimstack:key:1>: [
		format.red("Key to The Nether Dimension"),
		format.red("Right-Click on Bedrock to open a Portal"),
		format.red("From the bottom of The Beneath Dimension")
	],
	<dimstack:key:2>: [
		format.red("Key to The Erebus Dimension"),
		format.red("Right-Click on Bedrock to open a Portal"),
		format.red("From the bottom of The Nether Dimension")
	],
	<dimstack:key:3>: [
		format.red("Key to The End Dimension"),
		format.red("Right-Click on Bedrock to open a Portal"),
		format.red("From the bottom of The Erebus Dimension")
	],
	<xreliquary:mob_ingredient>: [
		format.red("Crafts into Bones")
	],
	<xreliquary:mob_ingredient:6>: [
		format.red("Crafts into Rotten Flesh")
	],

	//Tooltip replacement for Travellers Backpacks
		<travellersbackpack:travellers_backpack:2>: [
		format.yellow("Found in Mineshaft and Dungeon Chests")
	],
		<travellersbackpack:travellers_backpack:11>: [
		format.yellow("Found in Blacksmith Villager Chests")
	],
		<travellersbackpack:travellers_backpack:24>: [
		format.yellow("Acquired by wearing a Diamond backpack"),
		format.yellow("and being struck by lightning")		
	],
		<travellersbackpack:travellers_backpack:51>: [
		format.yellow("Acquired by wearing a Pig backpack"),
		format.yellow("and being struck by lightning")	
	],
		<travellersbackpack:travellers_backpack:71>: [
		format.yellow("Purchased from a Priest or"),
		format.yellow("Librarian Villager")
	]
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
