/*
	Crackpack 3 Mob Staging Script

	This script handles the staging of mobs to set stages for them to appear.
*/
import mods.zenstages.Stage;
import mods.zenstages.ZenStager;

// ==================================
// Mobs Staging
static mobsMap as string[][string] = {
	stages.flying.stage: [
		"ultimate_unicorn_mod:alea",
		"ultimate_unicorn_mod:asmidiske",
		"ultimate_unicorn_mod:pegasus",
		"ultimate_unicorn_mod:typhon",
		"ultimate_unicorn_mod:velvet"
	]
};

/*
	Init method to perform the logic for the script.
*/
function init() {
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
