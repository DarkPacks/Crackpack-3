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
	]
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
