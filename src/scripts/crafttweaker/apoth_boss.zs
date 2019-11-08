import mods.apotheosis.BossArmor;

BossArmor.removeSet("gold");
BossArmor.removeSet("iron");
BossArmor.removeSet("diamond");

BossArmor.addArmorSet(0, "iron_tank", 
<minecraft:iron_sword>, 
<minecraft:shield>, 
<minecraft:iron_boots>,
<minecraft:iron_leggings>,
<minecraft:iron_chestplate>,
<minecraft:iron_helmet>);

BossArmor.addArmorSet(0, "iron_zerk", 
<minecraft:iron_axe>, 
<minecraft:iron_axe>, 
<minecraft:iron_boots>, 
<minecraft:iron_leggings>,
<minecraft:iron_chestplate>,
<minecraft:chainmail_helmet>);

BossArmor.addArmorSet(0, "bone", 
<thebetweenlands:bone_sword>, 
<thebetweenlands:bone_shield>, 
<thebetweenlands:bone_boots>, 
<thebetweenlands:bone_leggings>, 
<thebetweenlands:bone_chestplate>, 
<thebetweenlands:bone_helmet>);

BossArmor.addArmorSet(1, "exo", 
<erebus:wasp_sword>, 
<erebus:exoskeleton_shield>, 
<erebus:exoskeleton_boots>, 
<erebus:exoskeleton_leggings>, 
<erebus:exoskeleton_chestplate>, 
<erebus:exoskeleton_helmet>);

BossArmor.addArmorSet(1, "giant", 
<twilightforest:giant_sword>, 
<twilightforest:giant_sword>,
<twilightforest:ironwood_boots>, 
<twilightforest:ironwood_leggings>, 
<twilightforest:ironwood_chestplate>, 
<twilightforest:ironwood_helmet>);

BossArmor.addPossibleWeapons("iron_tank", <minecraft:iron_axe> % 2, <minecraft:iron_pickaxe> % 1, <minecraft:iron_shovel> % 1);

BossArmor.addArmorSet(1, "ice_mage", 
<ebwizardry:apprentice_ice_wand>, 
<ebwizardry:amulet_ice_immunity>,
<ebwizardry:wizard_boots_ice>, 
<ebwizardry:wizard_leggings_ice>, 
<ebwizardry:wizard_robe_ice>, 
<ebwizardry:wizard_hat_ice>);

BossArmor.addArmorSet(1, "earth_mage", 
<ebwizardry:apprentice_earth_wand>, 
<ebwizardry:ring_earth_biome>,
<ebwizardry:wizard_boots_earth>, 
<ebwizardry:wizard_leggings_earth>, 
<ebwizardry:wizard_robe_earth>, 
<ebwizardry:wizard_hat_earth>);

BossArmor.addArmorSet(1, "fire_mage", 
<ebwizardry:apprentice_fire_wand>, 
<ebwizardry:ring_combustion>,
<ebwizardry:wizard_boots_fire>, 
<ebwizardry:wizard_leggings_fire>, 
<ebwizardry:wizard_robe_fire>, 
<ebwizardry:wizard_hat_fire>);

BossArmor.addArmorSet(2, "diamond", 
<minecraft:diamond_sword>, 
<ancientwarfarenpc:diamond_shield>, 
<minecraft:diamond_boots>, 
<minecraft:diamond_leggings>, 
<minecraft:diamond_chestplate>,
<minecraft:diamond_helmet>);

BossArmor.addPossibleWeapons("diamond", <ancientwarfarenpc:diamond_spear>, <ancientwarfarenpc:diamond_halberd>, <ancientwarfarenpc:diamond_lance>);

BossArmor.addArmorSet(2, "platinum", 
<thermalfoundation:tool.sword_platinum>,
<thermalfoundation:tool.shield_platinum>, 
<thermalfoundation:armor.boots_platinum>, 
<thermalfoundation:armor.legs_platinum>, 
<thermalfoundation:armor.plate_platinum>, 
<thermalfoundation:armor.helmet_platinum>);

BossArmor.addArmorSet(1, "master_fire_mage", 
<ebwizardry:master_fire_wand>, 
<ebwizardry:ring_disintegration>,
<ebwizardry:wizard_boots_fire>.withTag({legendary: 1 as byte}), 
<ebwizardry:wizard_leggings_fire>.withTag({legendary: 1 as byte}), 
<ebwizardry:wizard_robe_fire>.withTag({legendary: 1 as byte}), 
<ebwizardry:wizard_hat_fire>.withTag({legendary: 1 as byte}));

BossArmor.addArmorSet(3, "end_steel", 
<enderio:item_end_steel_sword>,
<enderio:item_end_steel_shield>,
<enderio:item_end_steel_boots>, 
<enderio:item_end_steel_leggings>, 
<enderio:item_end_steel_chestplate>, 
<enderio:item_end_steel_helmet>);

BossArmor.addArmorSet(3, "reinforced_exo", 
<mowziesmobs:wrought_axe>, 
<erebus:rein_exoskeleton_shield>, 
<erebus:rein_exoskeleton_boots>, 
<erebus:rein_exoskeleton_leggings>, 
<erebus:rein_exoskeleton_chestplate>, 
<erebus:rein_exoskeleton_helmet>);

BossArmor.addArmorSet(4, "glass_man", 
<twilightforest:glass_sword>.withTag({ench: [{lvl: 10 as short, id: 34}]}),
<twilightforest:knightmetal_shield>,
<twilightforest:knightmetal_boots>, 
<twilightforest:knightmetal_leggings>, 
<twilightforest:knightmetal_chestplate>, 
<twilightforest:knightmetal_helmet>);

