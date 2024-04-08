// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ssaveConfigureUnlocks() : SSave("unlocks") constructor {
	add_value("humanUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("orcUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("elfUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("giantUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("merfolkUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("skeletonUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("goblinUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	//add_value("masterVolume", SSAVE_TYPE.REAL, 1);
}

function ssaveSave(){
	var _save = ssave_get(ssaveConfigureUnlocks);
	
	_save.set("humanUnlocked", global.HumanUnlocked);
	_save.set("orcUnlocked", global.OrcUnlocked);
	_save.set("elfUnlocked", global.ElfUnlocked);
	_save.set("giantUnlocked", global.GiantUnlocked);
	_save.set("merfolkUnlocked", global.MerfolkUnlocked);
	_save.set("skeletonUnlocked", global.SkeletonUnlocked);
	_save.set("goblinUnlocked", global.GoblinUnlocked);
	
	_save.save();
}

function ssaveLoad(){
	var _save = ssave_get(ssaveConfigureUnlocks);
	
	global.HumanUnlocked = _save.get("humanUnlocked", 1);
	global.OrcUnlocked = _save.get("orcUnlocked", 1);
	global.ElfUnlocked = _save.get("elfUnlocked", 1);
	global.GiantUnlocked = _save.get("giantUnlocked", 1);
	global.MerfolkUnlocked = _save.get("merfolkUnlocked", 1);
	global.SkeletonUnlocked = _save.get("skeletonUnlocked", 1);
	global.GoblinUnlocked = _save.get("goblinUnlocked", 1);
}