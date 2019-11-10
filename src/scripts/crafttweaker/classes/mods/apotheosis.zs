#priority 3400

/*
	Crackpack 3 Apotheosis Class Script

	This script is a zenClass to allow easy interation with Apotheosis.
*/
import crafttweaker.item.IItemStack;

import mods.apotheosis.BossArmor;

zenClass Apotheosis {
	zenConstructor() {
	}

	function addBossArmorSet(level as int, mainhand as IItemStack, offhand as IItemStack, feet as IItemStack, legs as IItemStack, chest as IItemStack, head as IItemStack) {
		BossArmor.addArmorSet(level, mainhand, offhand, feet, legs, chest, head);
	}

	function removeBossArmorSet(level as int) {
		BossArmor.removeArmorSet(level);
	}
	function removeBossArmorSet(setName as string) {
		BossArmor.removeSet(setName);
	}
}
