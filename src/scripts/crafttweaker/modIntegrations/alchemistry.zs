/*
	Crackpack 3 Alchemistry Script

	This script handles custom integration control to a mod.
*/
function init() {
	alchemistry.addCombiner(<minecraft:netherrack>,
		[
			<alchemistry:compound:22>,<alchemistry:element:79>,<alchemistry:element:15>,
			<alchemistry:element:16>,<alchemistry:element:32>,<alchemistry:element:14>
		]
	);
	alchemistry.addCombiner(<tombstone:crafting_ingredient:3>,
		[
			<alchemistry:element:69>,<alchemistry:compound:16>,<alchemistry:compound:49>
		]
	);
}
