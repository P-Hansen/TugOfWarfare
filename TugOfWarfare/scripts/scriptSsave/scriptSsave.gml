// Script assets have changed for v2.3.0 see

function ssaveConfigureUnlocks() : SSave("unlocks") constructor {
	add_value("humanUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("orcUnlocked", SSAVE_TYPE.BOOLEAN, 1);
	add_value("elfUnlocked", SSAVE_TYPE.BOOLEAN, 0);
	add_value("giantUnlocked", SSAVE_TYPE.BOOLEAN, 0);
	add_value("merfolkUnlocked", SSAVE_TYPE.BOOLEAN, 0);
	add_value("skeletonUnlocked", SSAVE_TYPE.BOOLEAN, 0);
	add_value("goblinUnlocked", SSAVE_TYPE.BOOLEAN, 0);
	add_value("masterVolume", SSAVE_TYPE.REAL, 0.5);
}

function ssaveSave(){
	var _save = global.saveFile;//ssave_get(ssaveConfigureUnlocks);
	
	_save.set_protection(SSAVE_PROTECTION.NONE);
	_save.set("humanUnlocked", global.HumanUnlocked);
	_save.set("orcUnlocked", global.OrcUnlocked);
	_save.set("elfUnlocked", global.ElfUnlocked);
	_save.set("giantUnlocked", global.GiantUnlocked);
	_save.set("merfolkUnlocked", global.MerfolkUnlocked);
	_save.set("skeletonUnlocked", global.SkeletonUnlocked);
	_save.set("goblinUnlocked", global.GoblinUnlocked);
	_save.set("masterVolume", audio_get_master_gain(0));
	
	_save.save("1");
}

function ssaveLoad(){
	var _save = global.saveFile;//ssave_get(ssaveConfigureUnlocks);
	
	_save.load("1");
	global.HumanUnlocked = _save.get("humanUnlocked", 1);
	global.OrcUnlocked = _save.get("orcUnlocked", 1);
	global.ElfUnlocked = _save.get("elfUnlocked", 1);
	global.GiantUnlocked = _save.get("giantUnlocked", 1);
	global.MerfolkUnlocked = _save.get("merfolkUnlocked", 1);
	global.SkeletonUnlocked = _save.get("skeletonUnlocked", 1);
	global.GoblinUnlocked = _save.get("goblinUnlocked", 1);
	var vol = _save.get("masterVolume", 0.5);
	audio_master_gain(vol);
}